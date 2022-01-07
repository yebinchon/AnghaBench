
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;
typedef int * device_t ;
typedef int boolean_t ;


 int ENXIO ;
 int FDT_CLOCK_DISABLE (int *,int) ;
 int FDT_CLOCK_ENABLE (int *,int) ;
 int * OF_device_from_xref (int) ;
 int OF_getencprop_alloc_multi (int ,char*,int,void**) ;
 int OF_prop_free (int*) ;
 int device_printf (int *,char*,...) ;
 int ofw_bus_get_node (int *) ;

__attribute__((used)) static int
enable_disable_all(device_t consumer, boolean_t enable)
{
 phandle_t cnode;
 device_t clockdev;
 int clocknum, err, i, ncells;
 uint32_t *clks;
 boolean_t anyerrors;

 cnode = ofw_bus_get_node(consumer);
 ncells = OF_getencprop_alloc_multi(cnode, "clocks", sizeof(*clks),
     (void **)&clks);
 if (enable && ncells < 2) {
  device_printf(consumer, "Warning: No clocks specified in fdt "
      "data; device may not function.");
  return (ENXIO);
 }
 anyerrors = 0;
 for (i = 0; i < ncells; i += 2) {
  clockdev = OF_device_from_xref(clks[i]);
  clocknum = clks[i + 1];
  if (clockdev == ((void*)0)) {
   if (enable)
    device_printf(consumer, "Warning: can not find "
        "driver for clock number %u; device may not "
        "function\n", clocknum);
   anyerrors = 1;
   continue;
  }
  if (enable)
   err = FDT_CLOCK_ENABLE(clockdev, clocknum);
  else
   err = FDT_CLOCK_DISABLE(clockdev, clocknum);
  if (err != 0) {
   if (enable)
    device_printf(consumer, "Warning: failed to "
        "enable clock number %u; device may not "
        "function\n", clocknum);
   anyerrors = 1;
  }
 }
 OF_prop_free(clks);
 return (anyerrors ? ENXIO : 0);
}
