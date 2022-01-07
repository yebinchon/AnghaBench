
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioapic_intsrc {int io_irq; } ;
struct intsrc {int dummy; } ;



__attribute__((used)) static int
ioapic_vector(struct intsrc *isrc)
{
 struct ioapic_intsrc *pin;

 pin = (struct ioapic_intsrc *)isrc;
 return (pin->io_irq);
}
