
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_zone_entry {int dummy; } ;
struct mlx4_zone_allocator {int lock; } ;


 struct mlx4_zone_entry* __mlx4_find_zone_by_uid (struct mlx4_zone_allocator*,int) ;
 int __mlx4_free_from_zone (struct mlx4_zone_entry*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

u32 mlx4_zone_free_entries(struct mlx4_zone_allocator *zones, u32 uid, u32 obj, u32 count)
{
 struct mlx4_zone_entry *zone;
 int res = 0;

 spin_lock(&zones->lock);

 zone = __mlx4_find_zone_by_uid(zones, uid);

 if (((void*)0) == zone) {
  res = -1;
  goto out;
 }

 __mlx4_free_from_zone(zone, obj, count);

out:
 spin_unlock(&zones->lock);

 return res;
}
