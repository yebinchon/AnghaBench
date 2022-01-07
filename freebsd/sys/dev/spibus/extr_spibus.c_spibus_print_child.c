
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spibus_ivar {int cs; int mode; } ;
typedef int device_t ;


 struct spibus_ivar* SPIBUS_IVAR (int ) ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 scalar_t__ printf (char*,int) ;

__attribute__((used)) static int
spibus_print_child(device_t dev, device_t child)
{
 struct spibus_ivar *devi = SPIBUS_IVAR(child);
 int retval = 0;

 retval += bus_print_child_header(dev, child);
 retval += printf(" at cs %d", devi->cs);
 retval += printf(" mode %d", devi->mode);
 retval += bus_print_child_footer(dev, child);

 return (retval);
}
