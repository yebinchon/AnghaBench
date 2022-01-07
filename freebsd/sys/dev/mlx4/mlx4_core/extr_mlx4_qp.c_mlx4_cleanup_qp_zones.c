
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_qp_table {int * zones; int * bitmap_gen; int * zones_uids; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_bitmap {int dummy; } ;
struct TYPE_2__ {struct mlx4_qp_table qp_table; } ;


 int kfree (int *) ;
 int mlx4_bitmap_cleanup (struct mlx4_bitmap*) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_zone_allocator_destroy (int *) ;
 struct mlx4_bitmap* mlx4_zone_get_bitmap (int *,int ) ;
 int mlx4_zone_remove_one (int *,int ) ;

__attribute__((used)) static void mlx4_cleanup_qp_zones(struct mlx4_dev *dev)
{
 struct mlx4_qp_table *qp_table = &mlx4_priv(dev)->qp_table;

 if (qp_table->zones) {
  int i;

  for (i = 0;
       i < sizeof(qp_table->zones_uids)/sizeof(qp_table->zones_uids[0]);
       i++) {
   struct mlx4_bitmap *bitmap =
    mlx4_zone_get_bitmap(qp_table->zones,
           qp_table->zones_uids[i]);

   mlx4_zone_remove_one(qp_table->zones, qp_table->zones_uids[i]);
   if (((void*)0) == bitmap)
    continue;

   mlx4_bitmap_cleanup(bitmap);
  }
  mlx4_zone_allocator_destroy(qp_table->zones);
  kfree(qp_table->bitmap_gen);
  qp_table->bitmap_gen = ((void*)0);
  qp_table->zones = ((void*)0);
 }
}
