
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int OF_finddevice (char*) ;
 int device_add_child (int ,char*,int) ;
 int * device_find_child (int ,char*,int) ;

__attribute__((used)) static void
atibl_identify(driver_t *driver, device_t parent)
{
 if (OF_finddevice("mac-io/backlight") == -1)
  return;
 if (device_find_child(parent, "backlight", -1) == ((void*)0))
  device_add_child(parent, "backlight", -1);
}
