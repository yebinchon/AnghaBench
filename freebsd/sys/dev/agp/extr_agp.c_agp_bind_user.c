
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct agp_memory {int dummy; } ;
typedef int device_t ;
struct TYPE_3__ {int pg_start; int key; } ;
typedef TYPE_1__ agp_bind ;


 int AGP_BIND_MEMORY (int ,struct agp_memory*,int) ;
 int AGP_PAGE_SHIFT ;
 int ENOENT ;
 struct agp_memory* agp_find_memory (int ,int ) ;

__attribute__((used)) static int
agp_bind_user(device_t dev, agp_bind *bind)
{
 struct agp_memory *mem = agp_find_memory(dev, bind->key);

 if (!mem)
  return ENOENT;

 return AGP_BIND_MEMORY(dev, mem, bind->pg_start << AGP_PAGE_SHIFT);
}
