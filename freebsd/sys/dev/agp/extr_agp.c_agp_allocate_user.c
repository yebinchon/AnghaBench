
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct agp_memory {int am_physical; int am_id; } ;
typedef int device_t ;
struct TYPE_3__ {int pg_count; int physical; int key; int type; } ;
typedef TYPE_1__ agp_allocate ;


 struct agp_memory* AGP_ALLOC_MEMORY (int ,int ,int) ;
 int AGP_PAGE_SHIFT ;
 int ENOMEM ;

__attribute__((used)) static int
agp_allocate_user(device_t dev, agp_allocate *alloc)
{
 struct agp_memory *mem;

 mem = AGP_ALLOC_MEMORY(dev,
          alloc->type,
          alloc->pg_count << AGP_PAGE_SHIFT);
 if (mem) {
  alloc->key = mem->am_id;
  alloc->physical = mem->am_physical;
  return 0;
 } else {
  return ENOMEM;
 }
}
