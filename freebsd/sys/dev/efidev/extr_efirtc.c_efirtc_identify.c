
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int * BUS_ADD_CHILD (int ,int ,char*,int) ;
 int * device_find_child (int ,char*,int) ;
 int device_printf (int ,char*) ;
 scalar_t__ efi_rt_ok () ;

__attribute__((used)) static void
efirtc_identify(driver_t *driver, device_t parent)
{


 if (efi_rt_ok() != 0)
  return;
 if (device_find_child(parent, "efirtc", -1) != ((void*)0))
  return;
 if (BUS_ADD_CHILD(parent, 0, "efirtc", -1) == ((void*)0))
  device_printf(parent, "add child failed\n");
}
