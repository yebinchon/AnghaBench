
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;
typedef int * device_t ;
typedef int boolean_t ;


 int ENXIO ;
 int FDT_RESET_ASSERT (int *,int) ;
 int FDT_RESET_DEASSERT (int *,int) ;
 int * OF_device_from_xref (int) ;
 int OF_getencprop_alloc_multi (int ,char*,int,void**) ;
 int OF_prop_free (int*) ;
 int device_printf (int *,char*,...) ;
 int ofw_bus_get_node (int *) ;

__attribute__((used)) static int
assert_deassert_all(device_t consumer, boolean_t assert)
{
 phandle_t rnode;
 device_t resetdev;
 int resetnum, err, i, ncells;
 uint32_t *resets;
 boolean_t anyerrors;

 rnode = ofw_bus_get_node(consumer);
 ncells = OF_getencprop_alloc_multi(rnode, "resets", sizeof(*resets),
     (void **)&resets);
 if (!assert && ncells < 2) {
  device_printf(consumer, "Warning: No resets specified in fdt "
      "data; device may not function.");
  return (ENXIO);
 }
 anyerrors = 0;
 for (i = 0; i < ncells; i += 2) {
  resetdev = OF_device_from_xref(resets[i]);
  resetnum = resets[i + 1];
  if (resetdev == ((void*)0)) {
   if (!assert)
    device_printf(consumer, "Warning: can not find "
        "driver for reset number %u; device may "
        "not function\n", resetnum);
   anyerrors = 1;
   continue;
  }
  if (assert)
   err = FDT_RESET_ASSERT(resetdev, resetnum);
  else
   err = FDT_RESET_DEASSERT(resetdev, resetnum);
  if (err != 0) {
   if (!assert)
    device_printf(consumer, "Warning: failed to "
        "deassert reset number %u; device may not "
        "function\n", resetnum);
   anyerrors = 1;
  }
 }
 OF_prop_free(resets);
 return (anyerrors ? ENXIO : 0);
}
