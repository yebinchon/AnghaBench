
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_id_private {int dummy; } ;
struct TYPE_2__ {int event; } ;
struct cma_work {int work; TYPE_1__ event; int new_state; int old_state; struct rdma_id_private* id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int RDMA_CM_EVENT_ROUTE_RESOLVED ;
 int RDMA_CM_ROUTE_QUERY ;
 int RDMA_CM_ROUTE_RESOLVED ;
 int cma_work_handler ;
 int cma_wq ;
 struct cma_work* kzalloc (int,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int cma_resolve_iw_route(struct rdma_id_private *id_priv, int timeout_ms)
{
 struct cma_work *work;

 work = kzalloc(sizeof *work, GFP_KERNEL);
 if (!work)
  return -ENOMEM;

 work->id = id_priv;
 INIT_WORK(&work->work, cma_work_handler);
 work->old_state = RDMA_CM_ROUTE_QUERY;
 work->new_state = RDMA_CM_ROUTE_RESOLVED;
 work->event.event = RDMA_CM_EVENT_ROUTE_RESOLVED;
 queue_work(cma_wq, &work->work);
 return 0;
}
