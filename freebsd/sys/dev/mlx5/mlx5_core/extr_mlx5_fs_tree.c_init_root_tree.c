
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_namespace {int base; } ;
struct mlx5_core_dev {int dummy; } ;
struct init_tree_node {int ar_size; int * children; } ;
struct fs_base {int dummy; } ;


 int _init_root_tree (struct mlx5_core_dev*,int,int *,int *,struct init_tree_node*) ;
 int fs_get_obj (struct mlx5_flow_namespace*,struct fs_base*) ;

__attribute__((used)) static int init_root_tree(struct mlx5_core_dev *dev, int max_ft_level,
     struct init_tree_node *node, struct fs_base *parent)
{
 int i;
 struct mlx5_flow_namespace *fs_ns;
 int err = 0;

 fs_get_obj(fs_ns, parent);
 for (i = 0; i < node->ar_size; i++) {
  err = _init_root_tree(dev, max_ft_level,
          &node->children[i], &fs_ns->base, node);
  if (err)
   break;
 }
 return err;
}
