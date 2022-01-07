
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_attach_args {int mii_phyno; } ;
typedef int device_t ;


 scalar_t__ bus_print_child_footer (int ,int ) ;
 int bus_print_child_header (int ,int ) ;
 struct mii_attach_args* device_get_ivars (int ) ;
 scalar_t__ printf (char*,int) ;

__attribute__((used)) static int
miibus_print_child(device_t dev, device_t child)
{
 struct mii_attach_args *ma;
 int retval;

 ma = device_get_ivars(child);
 retval = bus_print_child_header(dev, child);
 retval += printf(" PHY %d", ma->mii_phyno);
 retval += bus_print_child_footer(dev, child);

 return (retval);
}
