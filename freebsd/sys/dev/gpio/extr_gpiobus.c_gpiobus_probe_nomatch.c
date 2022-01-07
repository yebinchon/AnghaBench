
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiobus_ivar {int npins; int rl; } ;
typedef int pins ;
typedef int device_t ;


 struct gpiobus_ivar* GPIOBUS_IVAR (int ) ;
 int SYS_RES_IRQ ;
 int device_printf (int ,char*,char*) ;
 int gpiobus_print_pins (struct gpiobus_ivar*,char*,int) ;
 int memset (char*,int ,int) ;
 int printf (char*) ;
 int resource_list_print_type (int *,char*,int ,char*) ;

__attribute__((used)) static void
gpiobus_probe_nomatch(device_t dev, device_t child)
{
 char pins[128];
 struct gpiobus_ivar *devi;

 devi = GPIOBUS_IVAR(child);
 memset(pins, 0, sizeof(pins));
 gpiobus_print_pins(devi, pins, sizeof(pins));
 if (devi->npins > 1)
  device_printf(dev, "<unknown device> at pins %s", pins);
 else
  device_printf(dev, "<unknown device> at pin %s", pins);
 resource_list_print_type(&devi->rl, "irq", SYS_RES_IRQ, "%jd");
 printf("\n");
}
