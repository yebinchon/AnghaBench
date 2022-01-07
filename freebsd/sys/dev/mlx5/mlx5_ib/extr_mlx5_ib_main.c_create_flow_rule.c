
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ib_flow_spec {int size; } ;
typedef int u32 ;
struct mlx5_ib_flow_prio {struct mlx5_flow_table* flow_table; int refcount; } ;
struct mlx5_ib_flow_handler {struct mlx5_ib_flow_prio* prio; int rule; int list; } ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_spec {int match_value; int match_criteria; int match_criteria_enable; } ;
struct mlx5_flow_destination {int dummy; } ;
struct ib_flow_attr {unsigned int num_of_specs; } ;


 int EINVAL ;
 int ENOMEM ;
 struct mlx5_ib_flow_handler* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ;
 int MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO ;
 int MLX5_FS_DEFAULT_FLOW_TAG ;
 int PTR_ERR (int ) ;
 int get_match_criteria_enable (int ) ;
 int is_valid_attr (struct ib_flow_attr const*) ;
 int kfree (struct mlx5_ib_flow_handler*) ;
 int kvfree (struct mlx5_flow_spec*) ;
 struct mlx5_ib_flow_handler* kzalloc (int,int ) ;
 int mlx5_add_flow_rule (struct mlx5_flow_table*,int ,int ,int ,int ,int ,struct mlx5_flow_destination*) ;
 struct mlx5_flow_spec* mlx5_vzalloc (int) ;
 int parse_flow_attr (int ,int ,void const*) ;

__attribute__((used)) static struct mlx5_ib_flow_handler *create_flow_rule(struct mlx5_ib_dev *dev,
           struct mlx5_ib_flow_prio *ft_prio,
           const struct ib_flow_attr *flow_attr,
           struct mlx5_flow_destination *dst)
{
 struct mlx5_flow_table *ft = ft_prio->flow_table;
 struct mlx5_ib_flow_handler *handler;
 struct mlx5_flow_spec *spec;
 const void *ib_flow = (const void *)flow_attr + sizeof(*flow_attr);
 unsigned int spec_index;
 u32 action;
 int err = 0;

 if (!is_valid_attr(flow_attr))
  return ERR_PTR(-EINVAL);

 spec = mlx5_vzalloc(sizeof(*spec));
 handler = kzalloc(sizeof(*handler), GFP_KERNEL);
 if (!handler || !spec) {
  err = -ENOMEM;
  goto free;
 }

 INIT_LIST_HEAD(&handler->list);

 for (spec_index = 0; spec_index < flow_attr->num_of_specs; spec_index++) {
  err = parse_flow_attr(spec->match_criteria,
          spec->match_value, ib_flow);
  if (err < 0)
   goto free;

  ib_flow += ((union ib_flow_spec *)ib_flow)->size;
 }

 spec->match_criteria_enable = get_match_criteria_enable(spec->match_criteria);
 action = dst ? MLX5_FLOW_CONTEXT_ACTION_FWD_DEST :
  MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO;
 handler->rule = mlx5_add_flow_rule(ft, spec->match_criteria_enable,
        spec->match_criteria,
        spec->match_value,
        action,
        MLX5_FS_DEFAULT_FLOW_TAG,
        dst);

 if (IS_ERR(handler->rule)) {
  err = PTR_ERR(handler->rule);
  goto free;
 }

 ft_prio->refcount++;
 handler->prio = ft_prio;

 ft_prio->flow_table = ft;
free:
 if (err)
  kfree(handler);
 kvfree(spec);
 return err ? ERR_PTR(err) : handler;
}
