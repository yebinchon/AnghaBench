
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pv_id_table; int sl_id_map; int cm_list; int id_map_lock; } ;
struct mlx4_ib_dev {TYPE_1__ sriov; } ;


 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int idr_init (int *) ;
 int spin_lock_init (int *) ;

void mlx4_ib_cm_paravirt_init(struct mlx4_ib_dev *dev)
{
 spin_lock_init(&dev->sriov.id_map_lock);
 INIT_LIST_HEAD(&dev->sriov.cm_list);
 dev->sriov.sl_id_map = RB_ROOT;
 idr_init(&dev->sriov.pv_id_table);
}
