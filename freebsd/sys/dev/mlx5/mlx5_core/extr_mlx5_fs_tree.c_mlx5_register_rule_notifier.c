
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_namespace {int notifiers_rw_sem; int list_notifiers; } ;
struct mlx5_flow_handler {int list; struct mlx5_flow_namespace* ns; void* client_context; void* del_dst_cb; void* add_dst_cb; } ;
struct mlx5_core_dev {int dummy; } ;
typedef void* rule_event_fn ;
typedef enum mlx5_flow_namespace_type { ____Placeholder_mlx5_flow_namespace_type } mlx5_flow_namespace_type ;


 int EINVAL ;
 int ENOMEM ;
 struct mlx5_flow_handler* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int down_write (int *) ;
 struct mlx5_flow_handler* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct mlx5_flow_namespace* mlx5_get_flow_namespace (struct mlx5_core_dev*,int) ;
 int up_write (int *) ;

struct mlx5_flow_handler *mlx5_register_rule_notifier(struct mlx5_core_dev *dev,
        enum mlx5_flow_namespace_type ns_type,
        rule_event_fn add_cb,
        rule_event_fn del_cb,
        void *context)
{
 struct mlx5_flow_namespace *ns;
 struct mlx5_flow_handler *handler;

 ns = mlx5_get_flow_namespace(dev, ns_type);
 if (!ns)
  return ERR_PTR(-EINVAL);

 handler = kzalloc(sizeof(*handler), GFP_KERNEL);
 if (!handler)
  return ERR_PTR(-ENOMEM);

 handler->add_dst_cb = add_cb;
 handler->del_dst_cb = del_cb;
 handler->client_context = context;
 handler->ns = ns;
 down_write(&ns->notifiers_rw_sem);
 list_add_tail(&handler->list, &ns->list_notifiers);
 up_write(&ns->notifiers_rw_sem);

 return handler;
}
