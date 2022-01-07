
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ioapic_intsrc {scalar_t__ io_vector; int io_masked; int io_irq; int io_cpu; } ;
struct intsrc {int dummy; } ;


 int apic_disable_vector (int ,scalar_t__) ;
 int apic_free_vector (int ,scalar_t__,int ) ;
 int icu_lock ;
 int ioapic_program_intpin (struct ioapic_intsrc*) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static void
ioapic_disable_intr(struct intsrc *isrc)
{
 struct ioapic_intsrc *intpin = (struct ioapic_intsrc *)isrc;
 u_int vector;

 if (intpin->io_vector != 0) {

  vector = intpin->io_vector;
  apic_disable_vector(intpin->io_cpu, vector);
  mtx_lock_spin(&icu_lock);
  intpin->io_masked = 1;
  intpin->io_vector = 0;
  ioapic_program_intpin(intpin);
  mtx_unlock_spin(&icu_lock);
  apic_free_vector(intpin->io_cpu, vector, intpin->io_irq);
 }
}
