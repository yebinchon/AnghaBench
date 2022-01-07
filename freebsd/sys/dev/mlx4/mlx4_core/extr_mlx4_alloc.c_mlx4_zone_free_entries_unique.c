
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_zone_entry {int dummy; } ;
struct mlx4_zone_allocator {int flags; int lock; } ;


 int EFAULT ;
 int MLX4_ZONE_ALLOC_FLAGS_NO_OVERLAP ;
 struct mlx4_zone_entry* __mlx4_find_zone_by_uid_unique (struct mlx4_zone_allocator*,int) ;
 int __mlx4_free_from_zone (struct mlx4_zone_entry*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

u32 mlx4_zone_free_entries_unique(struct mlx4_zone_allocator *zones, u32 obj, u32 count)
{
 struct mlx4_zone_entry *zone;
 int res;

 if (!(zones->flags & MLX4_ZONE_ALLOC_FLAGS_NO_OVERLAP))
  return -EFAULT;

 spin_lock(&zones->lock);

 zone = __mlx4_find_zone_by_uid_unique(zones, obj);

 if (((void*)0) == zone) {
  res = -1;
  goto out;
 }

 __mlx4_free_from_zone(zone, obj, count);
 res = 0;

out:
 spin_unlock(&zones->lock);

 return res;
}
