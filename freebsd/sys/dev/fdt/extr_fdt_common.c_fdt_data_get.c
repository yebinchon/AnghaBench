
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_long ;


 int fdt32_to_cpu (int ) ;
 int fdt64_to_cpu (int ) ;

u_long
fdt_data_get(void *data, int cells)
{

 if (cells == 1)
  return (fdt32_to_cpu(*((uint32_t *)data)));

 return (fdt64_to_cpu(*((uint64_t *)data)));
}
