
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_bitmap {int dummy; } ;


 struct ewah_bitmap** bitmap_pool ;
 int bitmap_pool_size ;
 struct ewah_bitmap* ewah_new () ;

struct ewah_bitmap *ewah_pool_new(void)
{
 if (bitmap_pool_size)
  return bitmap_pool[--bitmap_pool_size];

 return ewah_new();
}
