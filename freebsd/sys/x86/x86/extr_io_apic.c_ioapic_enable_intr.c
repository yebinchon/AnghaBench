
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioapic_intsrc {scalar_t__ io_vector; int io_cpu; int io_irq; } ;
struct intsrc {int is_domain; } ;


 int apic_enable_vector (int ,scalar_t__) ;
 int intr_next_cpu (int ) ;
 scalar_t__ ioapic_assign_cpu (struct intsrc*,int ) ;
 int panic (char*,int ) ;

__attribute__((used)) static void
ioapic_enable_intr(struct intsrc *isrc)
{
 struct ioapic_intsrc *intpin = (struct ioapic_intsrc *)isrc;

 if (intpin->io_vector == 0)
  if (ioapic_assign_cpu(isrc, intr_next_cpu(isrc->is_domain)) != 0)
   panic("Couldn't find an APIC vector for IRQ %d",
       intpin->io_irq);
 apic_enable_vector(intpin->io_cpu, intpin->io_vector);
}
