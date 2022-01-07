
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ioapic_intsrc {int io_masked; int io_lowreg; int io_intpin; int io_edgetrigger; } ;
struct ioapic {int io_addr; } ;
struct intsrc {scalar_t__ is_pic; } ;


 int IOAPIC_REDTBL_LO (int ) ;
 int IOART_INTMSET ;
 int PIC_EOI ;
 int _ioapic_eoi_source (struct intsrc*,int) ;
 int icu_lock ;
 int ioapic_write (int ,int ,int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static void
ioapic_disable_source(struct intsrc *isrc, int eoi)
{
 struct ioapic_intsrc *intpin = (struct ioapic_intsrc *)isrc;
 struct ioapic *io = (struct ioapic *)isrc->is_pic;
 uint32_t flags;

 mtx_lock_spin(&icu_lock);
 if (!intpin->io_masked && !intpin->io_edgetrigger) {
  flags = intpin->io_lowreg | IOART_INTMSET;
  ioapic_write(io->io_addr, IOAPIC_REDTBL_LO(intpin->io_intpin),
      flags);
  intpin->io_masked = 1;
 }

 if (eoi == PIC_EOI)
  _ioapic_eoi_source(isrc, 1);

 mtx_unlock_spin(&icu_lock);
}
