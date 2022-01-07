
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iser_device {int dummy; } ;
struct ib_conn {struct iser_device* device; int * qp; int cma_id; TYPE_1__* comp; } ;
struct iser_conn {scalar_t__ rx_descs; scalar_t__ login_buf; struct ib_conn ib_conn; } ;
struct TYPE_4__ {int connlist_mutex; } ;
struct TYPE_3__ {int active_qps; } ;


 int ISER_INFO (char*,struct iser_conn*,int ,int *) ;
 TYPE_2__ ig ;
 int iser_device_try_release (struct iser_device*) ;
 int iser_free_login_buf (struct iser_conn*) ;
 int iser_free_rx_descriptors (struct iser_conn*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rdma_destroy_qp (int ) ;

void
iser_free_ib_conn_res(struct iser_conn *iser_conn,
      bool destroy)
{
 struct ib_conn *ib_conn = &iser_conn->ib_conn;
 struct iser_device *device = ib_conn->device;

 ISER_INFO("freeing conn %p cma_id %p qp %p",
    iser_conn, ib_conn->cma_id, ib_conn->qp);

 if (ib_conn->qp != ((void*)0)) {
  mtx_lock(&ig.connlist_mutex);
  ib_conn->comp->active_qps--;
  mtx_unlock(&ig.connlist_mutex);
  rdma_destroy_qp(ib_conn->cma_id);
  ib_conn->qp = ((void*)0);
 }

 if (destroy) {
  if (iser_conn->login_buf)
   iser_free_login_buf(iser_conn);

  if (iser_conn->rx_descs)
   iser_free_rx_descriptors(iser_conn);

  if (device != ((void*)0)) {
   iser_device_try_release(device);
   ib_conn->device = ((void*)0);
  }
 }
}
