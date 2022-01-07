
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_root {int dummy; } ;
struct mlx4_ib_sriov {int id_map_lock; int pv_id_table; struct rb_root sl_id_map; } ;
struct id_map_entry {int node; int sl_cm_id; int slave_id; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct mlx4_ib_sriov sriov; } ;


 struct id_map_entry* id_map_find_by_sl_id (struct ib_device*,int ,int ) ;
 scalar_t__ idr_find (int *,int) ;
 int idr_remove (int *,int) ;
 int rb_erase (int *,struct rb_root*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* to_mdev (struct ib_device*) ;

__attribute__((used)) static void id_map_find_del(struct ib_device *ibdev, int pv_cm_id)
{
 struct mlx4_ib_sriov *sriov = &to_mdev(ibdev)->sriov;
 struct rb_root *sl_id_map = &sriov->sl_id_map;
 struct id_map_entry *ent, *found_ent;

 spin_lock(&sriov->id_map_lock);
 ent = (struct id_map_entry *)idr_find(&sriov->pv_id_table, pv_cm_id);
 if (!ent)
  goto out;
 found_ent = id_map_find_by_sl_id(ibdev, ent->slave_id, ent->sl_cm_id);
 if (found_ent && found_ent == ent)
  rb_erase(&found_ent->node, sl_id_map);
 idr_remove(&sriov->pv_id_table, pv_cm_id);
out:
 spin_unlock(&sriov->id_map_lock);
}
