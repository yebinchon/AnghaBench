
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct agp_memory {int dummy; } ;
typedef int device_t ;
struct TYPE_3__ {int key; } ;
typedef TYPE_1__ agp_unbind ;


 int AGP_UNBIND_MEMORY (int ,struct agp_memory*) ;
 int ENOENT ;
 struct agp_memory* agp_find_memory (int ,int ) ;

__attribute__((used)) static int
agp_unbind_user(device_t dev, agp_unbind *unbind)
{
 struct agp_memory *mem = agp_find_memory(dev, unbind->key);

 if (!mem)
  return ENOENT;

 return AGP_UNBIND_MEMORY(dev, mem);
}
