
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_flow_table {int id; int type; int vport; int base; } ;
struct TYPE_2__ {int list; int type; } ;
struct mlx5_flow_rule {TYPE_1__ base; int clients_lock; int clients_data; int dest_attr; } ;
struct mlx5_flow_group {int id; } ;
struct mlx5_flow_destination {int dummy; } ;
struct fs_fte {int dests_size; int dests; int action; int flow_tag; int index; int val; int status; } ;


 int ENOMEM ;
 struct mlx5_flow_rule* ERR_PTR (int) ;
 int FS_TYPE_FLOW_DEST ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int fs_get_dev (int *) ;
 int fs_get_parent (struct mlx5_flow_table*,struct mlx5_flow_group*) ;
 int kfree (struct mlx5_flow_rule*) ;
 struct mlx5_flow_rule* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int memcpy (int *,struct mlx5_flow_destination*,int) ;
 int mlx5_cmd_fs_set_fte (int ,int ,int *,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct mlx5_flow_rule *_fs_add_dst_fte(struct fs_fte *fte,
           struct mlx5_flow_group *fg,
           struct mlx5_flow_destination *dest)
{
 struct mlx5_flow_table *ft;
 struct mlx5_flow_rule *dst;
 int err;

 dst = kzalloc(sizeof(*dst), GFP_KERNEL);
 if (!dst)
  return ERR_PTR(-ENOMEM);

 memcpy(&dst->dest_attr, dest, sizeof(*dest));
 dst->base.type = FS_TYPE_FLOW_DEST;
 INIT_LIST_HEAD(&dst->clients_data);
 mutex_init(&dst->clients_lock);
 fs_get_parent(ft, fg);

 list_add_tail(&dst->base.list, &fte->dests);
 fte->dests_size++;
 err = mlx5_cmd_fs_set_fte(fs_get_dev(&ft->base),
      ft->vport,
      &fte->status,
      fte->val, ft->type,
      ft->id, fte->index, fg->id, fte->flow_tag,
      fte->action, fte->dests_size, &fte->dests);
 if (err)
  goto free_dst;

 list_del(&dst->base.list);

 return dst;

free_dst:
 list_del(&dst->base.list);
 kfree(dst);
 fte->dests_size--;
 return ERR_PTR(err);
}
