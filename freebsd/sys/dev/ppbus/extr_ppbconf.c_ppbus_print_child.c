
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppb_device {scalar_t__ flags; } ;
typedef int device_t ;


 scalar_t__ bus_print_child_footer (int ,int ) ;
 int bus_print_child_header (int ,int ) ;
 scalar_t__ device_get_ivars (int ) ;
 scalar_t__ printf (char*,scalar_t__) ;

__attribute__((used)) static int
ppbus_print_child(device_t bus, device_t dev)
{
 struct ppb_device *ppbdev;
 int retval;

 retval = bus_print_child_header(bus, dev);

 ppbdev = (struct ppb_device *)device_get_ivars(dev);

 if (ppbdev->flags != 0)
  retval += printf(" flags 0x%x", ppbdev->flags);

 retval += bus_print_child_footer(bus, dev);

 return (retval);
}
