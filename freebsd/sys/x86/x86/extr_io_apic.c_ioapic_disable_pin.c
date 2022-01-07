
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct ioapic {size_t io_numintr; int io_id; TYPE_1__* io_pins; } ;
struct TYPE_2__ {scalar_t__ io_irq; } ;


 int EINVAL ;
 scalar_t__ IRQ_DISABLED ;
 scalar_t__ bootverbose ;
 int printf (char*,int,size_t) ;

int
ioapic_disable_pin(void *cookie, u_int pin)
{
 struct ioapic *io;

 io = (struct ioapic *)cookie;
 if (pin >= io->io_numintr)
  return (EINVAL);
 if (io->io_pins[pin].io_irq == IRQ_DISABLED)
  return (EINVAL);
 io->io_pins[pin].io_irq = IRQ_DISABLED;
 if (bootverbose)
  printf("ioapic%u: intpin %d disabled\n", io->io_id, pin);
 return (0);
}
