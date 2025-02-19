
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 intptr_t AHCI_EM_UNIT ;
 int AHCI_UNIT ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 int bus_print_child_header (int ,int ) ;
 scalar_t__ device_get_ivars (int ) ;
 scalar_t__ printf (char*,int) ;

int
ahci_print_child(device_t dev, device_t child)
{
 intptr_t ivars;
 int retval;

 retval = bus_print_child_header(dev, child);
 ivars = (intptr_t)device_get_ivars(child);
 if ((ivars & AHCI_EM_UNIT) == 0)
  retval += printf(" at channel %d", (int)ivars & AHCI_UNIT);
 retval += bus_print_child_footer(dev, child);
 return (retval);
}
