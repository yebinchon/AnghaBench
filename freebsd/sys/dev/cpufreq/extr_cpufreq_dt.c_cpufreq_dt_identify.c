
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int driver_t ;
typedef int device_t ;


 int * BUS_ADD_CHILD (int ,int ,char*,int) ;
 int OF_hasprop (int ,char*) ;
 int * device_find_child (int ,char*,int) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static void
cpufreq_dt_identify(driver_t *driver, device_t parent)
{
 phandle_t node;


 node = ofw_bus_get_node(parent);


 if (!OF_hasprop(node, "clocks") ||
     (!OF_hasprop(node, "cpu-supply") &&
     !OF_hasprop(node, "cpu0-supply")))
  return;

 if (!OF_hasprop(node, "operating-points") &&
     !OF_hasprop(node, "operating-points-v2"))
  return;

 if (device_find_child(parent, "cpufreq_dt", -1) != ((void*)0))
  return;

 if (BUS_ADD_CHILD(parent, 0, "cpufreq_dt", -1) == ((void*)0))
  device_printf(parent, "add cpufreq_dt child failed\n");
}
