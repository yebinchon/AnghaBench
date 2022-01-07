
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_table {int shared_refcount; } ;
struct fs_prio {int objs; } ;


 struct mlx5_flow_table* find_first_ft_in_prio (struct fs_prio*,int *) ;

__attribute__((used)) static struct mlx5_flow_table *mlx5_create_autogrouped_shared_flow_table(struct fs_prio *fs_prio)
{
 struct mlx5_flow_table *ft;

 ft = find_first_ft_in_prio(fs_prio, &fs_prio->objs);
 if (ft) {
  ft->shared_refcount++;
  return ft;
 }

 return ((void*)0);
}
