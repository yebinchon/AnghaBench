
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_root_namespace {struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;
struct fs_base {int dummy; } ;


 struct mlx5_flow_root_namespace* find_root (struct fs_base*) ;

__attribute__((used)) static inline struct mlx5_core_dev *fs_get_dev(struct fs_base *node)
{
 struct mlx5_flow_root_namespace *root = find_root(node);

 if (root)
  return root->dev;
 return ((void*)0);
}
