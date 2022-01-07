
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct ioapic {size_t io_numintr; int io_id; TYPE_1__* io_pins; } ;
struct TYPE_2__ {int io_irq; } ;


 int EINVAL ;
 scalar_t__ bootverbose ;
 int printf (char*,int,int,size_t) ;

int
ioapic_remap_vector(void *cookie, u_int pin, int vector)
{
 struct ioapic *io;

 io = (struct ioapic *)cookie;
 if (pin >= io->io_numintr || vector < 0)
  return (EINVAL);
 if (io->io_pins[pin].io_irq < 0)
  return (EINVAL);
 io->io_pins[pin].io_irq = vector;
 if (bootverbose)
  printf("ioapic%u: Routing IRQ %d -> intpin %d\n", io->io_id,
      vector, pin);
 return (0);
}
