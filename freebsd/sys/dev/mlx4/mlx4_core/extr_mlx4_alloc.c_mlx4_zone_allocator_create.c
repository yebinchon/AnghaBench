
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_zone_allocator {int flags; scalar_t__ mask; scalar_t__ last_uid; int lock; int prios; int entries; } ;
typedef enum mlx4_zone_alloc_flags { ____Placeholder_mlx4_zone_alloc_flags } mlx4_zone_alloc_flags ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct mlx4_zone_allocator* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct mlx4_zone_allocator *mlx4_zone_allocator_create(enum mlx4_zone_alloc_flags flags)
{
 struct mlx4_zone_allocator *zones = kmalloc(sizeof(*zones), GFP_KERNEL);

 if (((void*)0) == zones)
  return ((void*)0);

 INIT_LIST_HEAD(&zones->entries);
 INIT_LIST_HEAD(&zones->prios);
 spin_lock_init(&zones->lock);
 zones->last_uid = 0;
 zones->mask = 0;
 zones->flags = flags;

 return zones;
}
