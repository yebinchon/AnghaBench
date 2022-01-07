
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int device_add_child (int ,char*,int ) ;
 scalar_t__ device_get_flags (int ) ;

__attribute__((used)) static void
vgapm_identify(driver_t *driver, device_t parent)
{

 if (device_get_flags(parent) != 0)
  device_add_child(parent, "vgapm", 0);
}
