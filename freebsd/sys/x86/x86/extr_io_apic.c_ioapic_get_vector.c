
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct ioapic {size_t io_numintr; TYPE_1__* io_pins; } ;
struct TYPE_2__ {int io_irq; } ;



int
ioapic_get_vector(void *cookie, u_int pin)
{
 struct ioapic *io;

 io = (struct ioapic *)cookie;
 if (pin >= io->io_numintr)
  return (-1);
 return (io->io_pins[pin].io_irq);
}
