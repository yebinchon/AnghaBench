
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rdma_route {struct cma_work* path_rec; } ;
struct TYPE_3__ {struct rdma_route route; } ;
struct rdma_id_private {TYPE_1__ id; } ;
struct TYPE_4__ {int event; } ;
struct cma_work {TYPE_2__ event; int new_state; int old_state; int work; struct rdma_id_private* id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int RDMA_CM_EVENT_ROUTE_RESOLVED ;
 int RDMA_CM_ROUTE_QUERY ;
 int RDMA_CM_ROUTE_RESOLVED ;
 int cma_query_ib_route (struct rdma_id_private*,int,struct cma_work*) ;
 int cma_work_handler ;
 int kfree (struct cma_work*) ;
 struct cma_work* kmalloc (int,int ) ;
 struct cma_work* kzalloc (int,int ) ;

__attribute__((used)) static int cma_resolve_ib_route(struct rdma_id_private *id_priv, int timeout_ms)
{
 struct rdma_route *route = &id_priv->id.route;
 struct cma_work *work;
 int ret;

 work = kzalloc(sizeof *work, GFP_KERNEL);
 if (!work)
  return -ENOMEM;

 work->id = id_priv;
 INIT_WORK(&work->work, cma_work_handler);
 work->old_state = RDMA_CM_ROUTE_QUERY;
 work->new_state = RDMA_CM_ROUTE_RESOLVED;
 work->event.event = RDMA_CM_EVENT_ROUTE_RESOLVED;

 route->path_rec = kmalloc(sizeof *route->path_rec, GFP_KERNEL);
 if (!route->path_rec) {
  ret = -ENOMEM;
  goto err1;
 }

 ret = cma_query_ib_route(id_priv, timeout_ms, work);
 if (ret)
  goto err2;

 return 0;
err2:
 kfree(route->path_rec);
 route->path_rec = ((void*)0);
err1:
 kfree(work);
 return ret;
}
