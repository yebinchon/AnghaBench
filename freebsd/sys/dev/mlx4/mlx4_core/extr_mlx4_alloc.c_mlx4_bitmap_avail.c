
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_bitmap {int avail; } ;



u32 mlx4_bitmap_avail(struct mlx4_bitmap *bitmap)
{
 return bitmap->avail;
}
