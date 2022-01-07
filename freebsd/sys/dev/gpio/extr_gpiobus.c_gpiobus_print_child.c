
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiobus_ivar {int npins; int rl; } ;
typedef int pins ;
typedef int device_t ;


 struct gpiobus_ivar* GPIOBUS_IVAR (int ) ;
 int SYS_RES_IRQ ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 int gpiobus_print_pins (struct gpiobus_ivar*,char*,int) ;
 int memset (char*,int ,int) ;
 scalar_t__ printf (char*,...) ;
 int resource_list_print_type (int *,char*,int ,char*) ;

__attribute__((used)) static int
gpiobus_print_child(device_t dev, device_t child)
{
 char pins[128];
 int retval = 0;
 struct gpiobus_ivar *devi;

 devi = GPIOBUS_IVAR(child);
 memset(pins, 0, sizeof(pins));
 retval += bus_print_child_header(dev, child);
 if (devi->npins > 0) {
  if (devi->npins > 1)
   retval += printf(" at pins ");
  else
   retval += printf(" at pin ");
  gpiobus_print_pins(devi, pins, sizeof(pins));
  retval += printf("%s", pins);
 }
 resource_list_print_type(&devi->rl, "irq", SYS_RES_IRQ, "%jd");
 retval += bus_print_child_footer(dev, child);

 return (retval);
}
