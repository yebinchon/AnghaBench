
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_memory {int dummy; } ;
typedef int device_t ;


 int AGP_FREE_MEMORY (int ,struct agp_memory*) ;
 int ENOENT ;
 struct agp_memory* agp_find_memory (int ,int) ;

__attribute__((used)) static int
agp_deallocate_user(device_t dev, int id)
{
 struct agp_memory *mem = agp_find_memory(dev, id);

 if (mem) {
  AGP_FREE_MEMORY(dev, mem);
  return 0;
 } else {
  return ENOENT;
 }
}
