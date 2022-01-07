
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fdt_clock_info {int index; char* name; int * provider; } ;
typedef int phandle_t ;
typedef int * device_t ;


 int ENXIO ;
 int FDT_CLOCK_GET_INFO (int *,int,struct fdt_clock_info*) ;
 int * OF_device_from_xref (int) ;
 int OF_getencprop_alloc_multi (int ,char*,int,void**) ;
 int OF_prop_free (int*) ;
 int bzero (struct fdt_clock_info*,int) ;
 int ofw_bus_get_node (int *) ;

int
fdt_clock_get_info(device_t consumer, int n, struct fdt_clock_info *info)
{
 phandle_t cnode;
 device_t clockdev;
 int clocknum, err, ncells;
 uint32_t *clks;

 cnode = ofw_bus_get_node(consumer);
 ncells = OF_getencprop_alloc_multi(cnode, "clocks", sizeof(*clks),
     (void **)&clks);
 if (ncells <= 0)
  return (ENXIO);
 n *= 2;
 if (ncells <= n)
  err = ENXIO;
 else {
  clockdev = OF_device_from_xref(clks[n]);
  if (clockdev == ((void*)0))
   err = ENXIO;
  else {





   clocknum = clks[n + 1];
   bzero(info, sizeof(*info));
   info->provider = clockdev;
   info->index = clocknum;
   info->name = "";
   err = FDT_CLOCK_GET_INFO(clockdev, clocknum, info);
  }
 }
 OF_prop_free(clks);
 return (err);
}
