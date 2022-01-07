
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_base {int dummy; } ;
struct mlx5_flow_namespace {struct fs_base base; } ;
struct mlx5_core_dev {int dummy; } ;
struct init_tree_node {scalar_t__ type; int min_ft_level; int ar_size; struct init_tree_node* children; int name; int flags; int max_ft; int caps; } ;
struct fs_prio {struct fs_base base; } ;


 int EINVAL ;
 scalar_t__ FS_TYPE_NAMESPACE ;
 scalar_t__ FS_TYPE_PRIO ;
 scalar_t__ IS_ERR (struct mlx5_flow_namespace*) ;
 int PTR_ERR (struct mlx5_flow_namespace*) ;
 struct mlx5_flow_namespace* fs_create_namespace (struct mlx5_flow_namespace*,int ) ;
 struct mlx5_flow_namespace* fs_create_prio (struct mlx5_flow_namespace*,int,int ,int ,int ) ;
 int fs_get_obj (struct mlx5_flow_namespace*,struct fs_base*) ;
 int has_required_caps (struct mlx5_core_dev*,int *) ;

__attribute__((used)) static int _init_root_tree(struct mlx5_core_dev *dev, int max_ft_level,
      struct init_tree_node *node, struct fs_base *base_parent,
      struct init_tree_node *tree_parent)
{
 struct mlx5_flow_namespace *fs_ns;
 struct fs_prio *fs_prio;
 int priority;
 struct fs_base *base;
 int i;
 int err = 0;

 if (node->type == FS_TYPE_PRIO) {
  if ((node->min_ft_level > max_ft_level) ||
      !has_required_caps(dev, &node->caps))
   goto out;

  fs_get_obj(fs_ns, base_parent);
  priority = node - tree_parent->children;
  fs_prio = fs_create_prio(fs_ns, priority,
      node->max_ft,
      node->name, node->flags);
  if (IS_ERR(fs_prio)) {
   err = PTR_ERR(fs_prio);
   goto out;
  }
  base = &fs_prio->base;
 } else if (node->type == FS_TYPE_NAMESPACE) {
  fs_get_obj(fs_prio, base_parent);
  fs_ns = fs_create_namespace(fs_prio, node->name);
  if (IS_ERR(fs_ns)) {
   err = PTR_ERR(fs_ns);
   goto out;
  }
  base = &fs_ns->base;
 } else {
  return -EINVAL;
 }
 for (i = 0; i < node->ar_size; i++) {
  err = _init_root_tree(dev, max_ft_level, &node->children[i], base,
          node);
  if (err)
   break;
 }
out:
 return err;
}
