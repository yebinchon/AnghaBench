
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int lock; } ;
struct TYPE_4__ {int num_types; scalar_t__ active; } ;
struct mlx5_flow_table {TYPE_3__ base; TYPE_1__ autogroup; int id; int type; int vport; } ;
struct TYPE_5__ {int list; } ;
struct mlx5_flow_group {int start_index; int max_ftes; int id; TYPE_2__ base; } ;
struct mlx5_core_dev {int dummy; } ;
struct list_head {int dummy; } ;
typedef int name ;


 struct mlx5_flow_group* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct mlx5_flow_group*) ;
 int fs_add_node (TYPE_2__*,TYPE_3__*,char*,int) ;
 struct mlx5_flow_group* fs_alloc_fg (int *) ;
 int kfree (struct mlx5_flow_group*) ;
 int list_add (int *,struct list_head*) ;
 int mlx5_cmd_fs_create_fg (struct mlx5_core_dev*,int *,int ,int ,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static struct mlx5_flow_group *fs_create_fg(struct mlx5_core_dev *dev,
         struct mlx5_flow_table *ft,
         struct list_head *prev,
         u32 *fg_in,
         int refcount)
{
 struct mlx5_flow_group *fg;
 int err;
 unsigned int end_index;
 char name[20];

 fg = fs_alloc_fg(fg_in);
 if (IS_ERR(fg))
  return fg;

 end_index = fg->start_index + fg->max_ftes - 1;
 err = mlx5_cmd_fs_create_fg(dev, fg_in,
         ft->vport, ft->type, ft->id,
         &fg->id);
 if (err)
  goto free_fg;

 mutex_lock(&ft->base.lock);
 if (ft->autogroup.active)
  ft->autogroup.num_types++;

 snprintf(name, sizeof(name), "group_%u", fg->id);

 fs_add_node(&fg->base, &ft->base, name, refcount);

 list_add(&fg->base.list, prev);
 mutex_unlock(&ft->base.lock);

 return fg;

free_fg:
 kfree(fg);
 return ERR_PTR(err);
}
