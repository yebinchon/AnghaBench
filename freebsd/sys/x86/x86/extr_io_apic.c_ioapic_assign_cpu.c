
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ioapic_intsrc {scalar_t__ io_vector; scalar_t__ io_irq; scalar_t__ io_cpu; int io_intpin; int io_lowreg; int io_edgetrigger; int io_masked; } ;
struct ioapic {int io_id; int io_addr; } ;
struct intsrc {scalar_t__ is_handlers; scalar_t__ is_pic; } ;


 int DELAY (int) ;
 int EINVAL ;
 int ENOSPC ;
 int IOAPIC_REDTBL_LO (int) ;
 int IOART_INTMSET ;
 scalar_t__ IRQ_NMI ;
 scalar_t__ VM_GUEST_HV ;
 scalar_t__ apic_alloc_vector (scalar_t__,scalar_t__) ;
 int apic_disable_vector (scalar_t__,scalar_t__) ;
 int apic_enable_vector (scalar_t__,scalar_t__) ;
 int apic_free_vector (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ bootverbose ;
 int icu_lock ;
 int ioapic_print_irq (struct ioapic_intsrc*) ;
 int ioapic_program_intpin (struct ioapic_intsrc*) ;
 int ioapic_write (int ,int ,int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int printf (char*,int,int) ;
 scalar_t__ vm_guest ;

__attribute__((used)) static int
ioapic_assign_cpu(struct intsrc *isrc, u_int apic_id)
{
 struct ioapic_intsrc *intpin = (struct ioapic_intsrc *)isrc;
 struct ioapic *io = (struct ioapic *)isrc->is_pic;
 u_int old_vector, new_vector;
 u_int old_id;






 if (vm_guest == VM_GUEST_HV) {
  if (intpin->io_vector)
   return (EINVAL);
  else
   apic_id = 0;
 }




 if (intpin->io_irq == IRQ_NMI)
  apic_id = 0;




 old_vector = intpin->io_vector;
 old_id = intpin->io_cpu;
 if (old_vector && apic_id == old_id)
  return (0);





 new_vector = apic_alloc_vector(apic_id, intpin->io_irq);
 if (new_vector == 0)
  return (ENOSPC);







 mtx_lock_spin(&icu_lock);
 if (!intpin->io_masked && !intpin->io_edgetrigger) {
  ioapic_write(io->io_addr, IOAPIC_REDTBL_LO(intpin->io_intpin),
      intpin->io_lowreg | IOART_INTMSET);
  mtx_unlock_spin(&icu_lock);
  DELAY(100);
  mtx_lock_spin(&icu_lock);
 }

 intpin->io_cpu = apic_id;
 intpin->io_vector = new_vector;
 if (isrc->is_handlers > 0)
  apic_enable_vector(intpin->io_cpu, intpin->io_vector);
 if (bootverbose) {
  printf("ioapic%u: routing intpin %u (", io->io_id,
      intpin->io_intpin);
  ioapic_print_irq(intpin);
  printf(") to lapic %u vector %u\n", intpin->io_cpu,
      intpin->io_vector);
 }
 ioapic_program_intpin(intpin);
 mtx_unlock_spin(&icu_lock);





 if (old_vector) {
  if (isrc->is_handlers > 0)
   apic_disable_vector(old_id, old_vector);
  apic_free_vector(old_id, old_vector, intpin->io_irq);
 }
 return (0);
}
