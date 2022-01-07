
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_3__ {scalar_t__ (* event_handler ) (TYPE_1__*,struct rdma_cm_event*) ;} ;
struct rdma_id_private {int handler_mutex; TYPE_1__ id; int cma_dev; } ;
struct rdma_dev_addr {int dummy; } ;
struct rdma_cm_event {int status; int event; } ;


 int RDMA_CM_ADDR_BOUND ;
 int RDMA_CM_ADDR_QUERY ;
 int RDMA_CM_ADDR_RESOLVED ;
 int RDMA_CM_DESTROYING ;
 int RDMA_CM_EVENT_ADDR_ERROR ;
 int RDMA_CM_EVENT_ADDR_RESOLVED ;
 int cma_acquire_dev (struct rdma_id_private*,int *) ;
 int cma_comp_exch (struct rdma_id_private*,int ,int ) ;
 int cma_deref_id (struct rdma_id_private*) ;
 int cma_exch (struct rdma_id_private*,int ) ;
 int cma_src_addr (struct rdma_id_private*) ;
 int memcpy (int ,struct sockaddr*,int ) ;
 int memset (struct rdma_cm_event*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdma_addr_size (struct sockaddr*) ;
 int rdma_destroy_id (TYPE_1__*) ;
 scalar_t__ stub1 (TYPE_1__*,struct rdma_cm_event*) ;

__attribute__((used)) static void addr_handler(int status, struct sockaddr *src_addr,
    struct rdma_dev_addr *dev_addr, void *context)
{
 struct rdma_id_private *id_priv = context;
 struct rdma_cm_event event;

 memset(&event, 0, sizeof event);
 mutex_lock(&id_priv->handler_mutex);
 if (!cma_comp_exch(id_priv, RDMA_CM_ADDR_QUERY,
      RDMA_CM_ADDR_RESOLVED))
  goto out;

 memcpy(cma_src_addr(id_priv), src_addr, rdma_addr_size(src_addr));
 if (!status && !id_priv->cma_dev)
  status = cma_acquire_dev(id_priv, ((void*)0));

 if (status) {
  if (!cma_comp_exch(id_priv, RDMA_CM_ADDR_RESOLVED,
       RDMA_CM_ADDR_BOUND))
   goto out;
  event.event = RDMA_CM_EVENT_ADDR_ERROR;
  event.status = status;
 } else
  event.event = RDMA_CM_EVENT_ADDR_RESOLVED;

 if (id_priv->id.event_handler(&id_priv->id, &event)) {
  cma_exch(id_priv, RDMA_CM_DESTROYING);
  mutex_unlock(&id_priv->handler_mutex);
  cma_deref_id(id_priv);
  rdma_destroy_id(&id_priv->id);
  return;
 }
out:
 mutex_unlock(&id_priv->handler_mutex);
 cma_deref_id(id_priv);
}
