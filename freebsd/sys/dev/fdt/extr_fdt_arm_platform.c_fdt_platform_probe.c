
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* platform_t ;
typedef int phandle_t ;
struct TYPE_6__ {char* fdt_compatible; } ;
struct TYPE_5__ {int * cls; } ;


 TYPE_3__* FDT_PLATFORM (TYPE_1__*) ;
 int OF_finddevice (char*) ;
 scalar_t__ ofw_bus_node_is_compatible (int ,char const*) ;

__attribute__((used)) static int
fdt_platform_probe(platform_t plat)
{
 const char *compat;
 phandle_t root;





 if (plat->cls == ((void*)0) || FDT_PLATFORM(plat) == ((void*)0))
  return 1;


 root = OF_finddevice("/");
 compat = FDT_PLATFORM(plat)->fdt_compatible;
 if (ofw_bus_node_is_compatible(root, compat) != 0)
  return 0;


 return 1;
}
