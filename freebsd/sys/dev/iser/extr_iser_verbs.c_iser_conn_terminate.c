
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* wr_id; int opcode; } ;
struct TYPE_6__ {int flush_lock; int flush_cv; TYPE_2__ recv; TYPE_2__ send; } ;
struct ib_conn {TYPE_1__ beacon; int * qp; scalar_t__ cma_id; } ;
struct iser_conn {int state; struct ib_conn ib_conn; } ;
struct ib_send_wr {int dummy; } ;
struct ib_recv_wr {int dummy; } ;
struct TYPE_8__ {int close_conns_mutex; } ;


 int IB_WR_SEND ;
 void* ISER_BEACON_WRID ;
 int ISER_CONN_TERMINATING ;
 int ISER_CONN_UP ;
 int ISER_DBG (char*,struct iser_conn*) ;
 int ISER_ERR (char*,...) ;
 int ISER_INFO (char*,struct iser_conn*,int ) ;
 int ISER_WARN (char*) ;
 int cv_wait (int *,int *) ;
 int ib_post_recv (int *,TYPE_2__*,struct ib_recv_wr**) ;
 int ib_post_send (int *,TYPE_2__*,struct ib_send_wr**) ;
 TYPE_3__ ig ;
 int iser_conn_state_comp_exch (struct iser_conn*,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rdma_disconnect (scalar_t__) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
iser_conn_terminate(struct iser_conn *iser_conn)
{
 struct ib_conn *ib_conn = &iser_conn->ib_conn;
 struct ib_send_wr *bad_send_wr;
 struct ib_recv_wr *bad_recv_wr;
 int err = 0;


 if (!iser_conn_state_comp_exch(iser_conn, ISER_CONN_UP,
        ISER_CONN_TERMINATING))
  return (0);

 ISER_INFO("iser_conn %p state %d\n", iser_conn, iser_conn->state);

 if (ib_conn->qp == ((void*)0)) {

  ISER_WARN("qp wasn't created");
  return (1);
 }
 sx_xlock(&ig.close_conns_mutex);






 if (ib_conn->cma_id) {
  err = rdma_disconnect(ib_conn->cma_id);
  if (err)
   ISER_ERR("Failed to disconnect, conn: 0x%p err %d",
    iser_conn, err);

  mtx_lock(&ib_conn->beacon.flush_lock);
  memset(&ib_conn->beacon.send, 0, sizeof(struct ib_send_wr));
  ib_conn->beacon.send.wr_id = ISER_BEACON_WRID;
  ib_conn->beacon.send.opcode = IB_WR_SEND;

  err = ib_post_send(ib_conn->qp, &ib_conn->beacon.send, &bad_send_wr);
  if (err) {
   ISER_ERR("conn %p failed to post send_beacon", ib_conn);
   mtx_unlock(&ib_conn->beacon.flush_lock);
   goto out;
  }

  ISER_DBG("before send cv_wait: %p", iser_conn);
  cv_wait(&ib_conn->beacon.flush_cv, &ib_conn->beacon.flush_lock);
  ISER_DBG("after send cv_wait: %p", iser_conn);

  memset(&ib_conn->beacon.recv, 0, sizeof(struct ib_recv_wr));
  ib_conn->beacon.recv.wr_id = ISER_BEACON_WRID;

  err = ib_post_recv(ib_conn->qp, &ib_conn->beacon.recv, &bad_recv_wr);
  if (err) {
   ISER_ERR("conn %p failed to post recv_beacon", ib_conn);
   mtx_unlock(&ib_conn->beacon.flush_lock);
   goto out;
  }

  ISER_DBG("before recv cv_wait: %p", iser_conn);
  cv_wait(&ib_conn->beacon.flush_cv, &ib_conn->beacon.flush_lock);
  mtx_unlock(&ib_conn->beacon.flush_lock);
  ISER_DBG("after recv cv_wait: %p", iser_conn);
 }
out:
 sx_xunlock(&ig.close_conns_mutex);
 return (1);
}
