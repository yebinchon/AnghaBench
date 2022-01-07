
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct ioapic {size_t io_numintr; int io_id; TYPE_1__* io_pins; } ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
struct TYPE_2__ {scalar_t__ io_irq; int io_activehi; } ;


 int EINVAL ;
 int INTR_POLARITY_CONFORM ;
 int INTR_POLARITY_HIGH ;
 scalar_t__ bootverbose ;
 int printf (char*,int,size_t,char*) ;

int
ioapic_set_polarity(void *cookie, u_int pin, enum intr_polarity pol)
{
 struct ioapic *io;
 int activehi;

 io = (struct ioapic *)cookie;
 if (pin >= io->io_numintr || pol == INTR_POLARITY_CONFORM)
  return (EINVAL);
 if (io->io_pins[pin].io_irq < 0)
  return (EINVAL);
 activehi = (pol == INTR_POLARITY_HIGH);
 if (io->io_pins[pin].io_activehi == activehi)
  return (0);
 io->io_pins[pin].io_activehi = activehi;
 if (bootverbose)
  printf("ioapic%u: intpin %d polarity: %s\n", io->io_id, pin,
      pol == INTR_POLARITY_HIGH ? "high" : "low");
 return (0);
}
