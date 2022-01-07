
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct mlx4_ib_sriov {int id_map_lock; int cm_list; int pv_id_table; } ;
struct id_map_entry {int slave_id; int list; void* pv_cm_id; int timeout; TYPE_1__* dev; scalar_t__ scheduled_delete; void* sl_cm_id; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct mlx4_ib_sriov sriov; } ;


 int ENOMEM ;
 struct id_map_entry* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int id_map_ent_timeout ;
 int idr_alloc_cyclic (int *,struct id_map_entry*,int ,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int kfree (struct id_map_entry*) ;
 struct id_map_entry* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mlx4_ib_warn (struct ib_device*,char*,...) ;
 int sl_id_map_add (struct ib_device*,struct id_map_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* to_mdev (struct ib_device*) ;

__attribute__((used)) static struct id_map_entry *
id_map_alloc(struct ib_device *ibdev, int slave_id, u32 sl_cm_id)
{
 int ret;
 struct id_map_entry *ent;
 struct mlx4_ib_sriov *sriov = &to_mdev(ibdev)->sriov;

 ent = kmalloc(sizeof (struct id_map_entry), GFP_KERNEL);
 if (!ent) {
  mlx4_ib_warn(ibdev, "Couldn't allocate id cache entry - out of memory\n");
  return ERR_PTR(-ENOMEM);
 }

 ent->sl_cm_id = sl_cm_id;
 ent->slave_id = slave_id;
 ent->scheduled_delete = 0;
 ent->dev = to_mdev(ibdev);
 INIT_DELAYED_WORK(&ent->timeout, id_map_ent_timeout);

 idr_preload(GFP_KERNEL);
 spin_lock(&to_mdev(ibdev)->sriov.id_map_lock);

 ret = idr_alloc_cyclic(&sriov->pv_id_table, ent, 0, 0, GFP_NOWAIT);
 if (ret >= 0) {
  ent->pv_cm_id = (u32)ret;
  sl_id_map_add(ibdev, ent);
  list_add_tail(&ent->list, &sriov->cm_list);
 }

 spin_unlock(&sriov->id_map_lock);
 idr_preload_end();

 if (ret >= 0)
  return ent;


 kfree(ent);
 mlx4_ib_warn(ibdev, "No more space in the idr (err:0x%x)\n", ret);
 return ERR_PTR(-ENOMEM);
}
