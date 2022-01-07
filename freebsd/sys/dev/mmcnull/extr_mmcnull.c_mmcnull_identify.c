
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int * device_t ;


 int * BUS_ADD_CHILD (int *,int,char*,int ) ;
 scalar_t__ device_find_child (int *,char*,int) ;
 scalar_t__ device_get_unit (int *) ;
 int device_printf (int *,char*) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static void
mmcnull_identify(driver_t *driver, device_t parent)
{
 device_t child;

 if (resource_disabled("mmcnull", 0))
  return;

 if (device_get_unit(parent) != 0)
  return;


 if (device_find_child(parent, "mmcnull", -1))
  return;

 child = BUS_ADD_CHILD(parent, 20, "mmcnull", 0);
 if (child == ((void*)0)) {
  device_printf(parent, "add MMCNULL child failed\n");
  return;
 }
}
