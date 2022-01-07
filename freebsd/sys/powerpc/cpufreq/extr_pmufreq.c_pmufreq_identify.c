
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;
typedef int min_freq ;
typedef int driver_t ;
typedef int device_t ;


 int * BUS_ADD_CHILD (int ,int,char*,int) ;
 int OF_getprop (int ,char*,int *,int) ;
 int * device_find_child (int ,char*,int) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static void
pmufreq_identify(driver_t *driver, device_t parent)
{
 phandle_t node;
 uint32_t min_freq;

 node = ofw_bus_get_node(parent);
 if (OF_getprop(node, "min-clock-frequency", &min_freq, sizeof(min_freq)) == -1)
  return;


 if (device_find_child(parent, "pmufreq", -1) != ((void*)0))
  return;





 if (BUS_ADD_CHILD(parent, 10, "pmufreq", -1) == ((void*)0))
  device_printf(parent, "add pmufreq child failed\n");
}
