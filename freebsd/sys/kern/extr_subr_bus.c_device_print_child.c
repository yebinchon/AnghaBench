
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ BUS_PRINT_CHILD (int ,int ) ;
 scalar_t__ device_is_alive (int ) ;
 scalar_t__ device_printf (int ,char*) ;

__attribute__((used)) static int
device_print_child(device_t dev, device_t child)
{
 int retval = 0;

 if (device_is_alive(child))
  retval += BUS_PRINT_CHILD(dev, child);
 else
  retval += device_printf(child, " not found\n");

 return (retval);
}
