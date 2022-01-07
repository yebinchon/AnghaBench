
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int device_add_child (int ,char*,int ) ;
 int device_get_parent (int ) ;
 scalar_t__ x86bios_match_device (int,int ) ;

__attribute__((used)) static void
dpms_identify(driver_t *driver, device_t parent)
{

 if (x86bios_match_device(0xc0000, device_get_parent(parent)))
  device_add_child(parent, "dpms", 0);
}
