
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; int max_types; } ;
struct mlx5_flow_table {int shared_refcount; TYPE_1__ autogroup; } ;
struct mlx5_flow_namespace {int dummy; } ;
struct fs_prio {int flags; int shared_lock; } ;


 int EINVAL ;
 struct mlx5_flow_table* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct mlx5_flow_table*) ;
 int MLX5_CORE_FS_PRIO_SHARED ;
 struct mlx5_flow_table* create_ft_common (struct mlx5_flow_namespace*,int ,int,int,char const*) ;
 struct fs_prio* find_prio (struct mlx5_flow_namespace*,int) ;
 struct mlx5_flow_table* mlx5_create_autogrouped_shared_flow_table (struct fs_prio*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct mlx5_flow_table *mlx5_create_auto_grouped_flow_table(struct mlx5_flow_namespace *ns,
          int prio,
          const char *name,
          int num_flow_table_entries,
          int max_num_groups)
{
 struct mlx5_flow_table *ft = ((void*)0);
 struct fs_prio *fs_prio;
 bool is_shared_prio;

 fs_prio = find_prio(ns, prio);
 if (!fs_prio)
  return ERR_PTR(-EINVAL);

 is_shared_prio = fs_prio->flags & MLX5_CORE_FS_PRIO_SHARED;
 if (is_shared_prio) {
  mutex_lock(&fs_prio->shared_lock);
  ft = mlx5_create_autogrouped_shared_flow_table(fs_prio);
 }

 if (ft)
  goto return_ft;

 ft = create_ft_common(ns, 0, prio, num_flow_table_entries,
         name);
 if (IS_ERR(ft))
  goto return_ft;

 ft->autogroup.active = 1;
 ft->autogroup.max_types = max_num_groups;
 if (is_shared_prio)
  ft->shared_refcount = 1;

return_ft:
 if (is_shared_prio)
  mutex_unlock(&fs_prio->shared_lock);
 return ft;
}
