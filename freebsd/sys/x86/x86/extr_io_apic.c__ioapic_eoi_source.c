
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ioapic_intsrc {int io_vector; int io_lowreg; int io_intpin; scalar_t__ io_edgetrigger; } ;
struct ioapic {scalar_t__ io_addr; scalar_t__ io_haseoi; } ;
struct intsrc {scalar_t__ is_pic; } ;


 int IOAPIC_EOIR ;
 int IOAPIC_REDTBL_LO (int ) ;
 int IOART_INTMSET ;
 int IOART_TRGREDG ;
 int IOART_TRGRLVL ;
 int icu_lock ;
 int ioapic_write (scalar_t__,int ,int) ;
 int lapic_eoi () ;
 int lapic_eoi_suppression ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static void
_ioapic_eoi_source(struct intsrc *isrc, int locked)
{
 struct ioapic_intsrc *src;
 struct ioapic *io;
 volatile uint32_t *apic_eoi;
 uint32_t low1;

 lapic_eoi();
 if (!lapic_eoi_suppression)
  return;
 src = (struct ioapic_intsrc *)isrc;
 if (src->io_edgetrigger)
  return;
 io = (struct ioapic *)isrc->is_pic;





 if (io->io_haseoi) {




  apic_eoi = (volatile uint32_t *)((volatile char *)
      io->io_addr + IOAPIC_EOIR);
  *apic_eoi = src->io_vector;
 } else {






  if (!locked)
   mtx_lock_spin(&icu_lock);
  low1 = src->io_lowreg;
  low1 &= ~IOART_TRGRLVL;
  low1 |= IOART_TRGREDG | IOART_INTMSET;
  ioapic_write(io->io_addr, IOAPIC_REDTBL_LO(src->io_intpin),
      low1);
  ioapic_write(io->io_addr, IOAPIC_REDTBL_LO(src->io_intpin),
      src->io_lowreg);
  if (!locked)
   mtx_unlock_spin(&icu_lock);
 }
}
