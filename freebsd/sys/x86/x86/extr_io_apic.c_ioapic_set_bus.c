
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct ioapic {size_t io_numintr; int io_id; TYPE_1__* io_pins; } ;
struct TYPE_2__ {scalar_t__ io_irq; int io_bus; } ;


 int APIC_BUS_MAX ;
 int EINVAL ;
 scalar_t__ bootverbose ;
 char* ioapic_bus_string (int) ;
 int printf (char*,int,size_t,char*) ;

int
ioapic_set_bus(void *cookie, u_int pin, int bus_type)
{
 struct ioapic *io;

 if (bus_type < 0 || bus_type > APIC_BUS_MAX)
  return (EINVAL);
 io = (struct ioapic *)cookie;
 if (pin >= io->io_numintr)
  return (EINVAL);
 if (io->io_pins[pin].io_irq < 0)
  return (EINVAL);
 if (io->io_pins[pin].io_bus == bus_type)
  return (0);
 io->io_pins[pin].io_bus = bus_type;
 if (bootverbose)
  printf("ioapic%u: intpin %d bus %s\n", io->io_id, pin,
      ioapic_bus_string(bus_type));
 return (0);
}
