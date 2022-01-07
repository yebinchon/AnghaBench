
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct ib_conn {int * cma_id; int * device; } ;
struct iser_conn {int handoff_done; scalar_t__ state; int state_mutex; int conn_list; int up_cv; struct ib_conn ib_conn; } ;
struct icl_conn {int dummy; } ;
struct TYPE_2__ {int connlist_mutex; int connlist; } ;


 int EIO ;
 int IB_QPT_RC ;
 scalar_t__ ISER_CONN_PENDING ;
 scalar_t__ ISER_CONN_UP ;
 int ISER_DBG (char*,struct iser_conn*) ;
 int ISER_ERR (char*,int) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int RDMA_PS_TCP ;
 int cv_wait (int *,int *) ;
 struct iser_conn* icl_to_iser_conn (struct icl_conn*) ;
 TYPE_1__ ig ;
 int init_net ;
 int iser_alloc_login_buf (struct iser_conn*) ;
 int iser_cma_handler ;
 int iser_conn_release (struct icl_conn*) ;
 int list_add (int *,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int * rdma_create_id (int *,int ,void*,int ,int ) ;
 int rdma_resolve_addr (int *,struct sockaddr*,struct sockaddr*,int) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
iser_conn_connect(struct icl_conn *ic, int domain, int socktype,
  int protocol, struct sockaddr *from_sa, struct sockaddr *to_sa)
{
 struct iser_conn *iser_conn = icl_to_iser_conn(ic);
 struct ib_conn *ib_conn = &iser_conn->ib_conn;
 int err = 0;

 iser_conn_release(ic);

 sx_xlock(&iser_conn->state_mutex);

 ib_conn->device = ((void*)0);
 iser_conn->handoff_done = 0;

 iser_conn->state = ISER_CONN_PENDING;

 ib_conn->cma_id = rdma_create_id(&init_net, iser_cma_handler, (void *)iser_conn,
   RDMA_PS_TCP, IB_QPT_RC);
 if (IS_ERR(ib_conn->cma_id)) {
  err = -PTR_ERR(ib_conn->cma_id);
  ISER_ERR("rdma_create_id failed: %d", err);
  goto id_failure;
 }

 err = rdma_resolve_addr(ib_conn->cma_id, from_sa, to_sa, 1000);
 if (err) {
  ISER_ERR("rdma_resolve_addr failed: %d", err);
  if (err < 0)
   err = -err;
  goto addr_failure;
 }

 ISER_DBG("before cv_wait: %p", iser_conn);
 cv_wait(&iser_conn->up_cv, &iser_conn->state_mutex);
 ISER_DBG("after cv_wait: %p", iser_conn);

 if (iser_conn->state != ISER_CONN_UP) {
  err = EIO;
  goto addr_failure;
 }

 err = iser_alloc_login_buf(iser_conn);
 if (err)
  goto addr_failure;
 sx_xunlock(&iser_conn->state_mutex);

 mtx_lock(&ig.connlist_mutex);
 list_add(&iser_conn->conn_list, &ig.connlist);
 mtx_unlock(&ig.connlist_mutex);

 return (0);

id_failure:
 ib_conn->cma_id = ((void*)0);
addr_failure:
 sx_xunlock(&iser_conn->state_mutex);
 return (err);
}
