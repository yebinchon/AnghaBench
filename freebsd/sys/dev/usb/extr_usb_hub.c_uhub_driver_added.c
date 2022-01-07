
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int usb_needs_explore_all () ;

__attribute__((used)) static void
uhub_driver_added(device_t dev, driver_t *driver)
{
 usb_needs_explore_all();
}
