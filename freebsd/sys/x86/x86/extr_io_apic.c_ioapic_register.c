
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ioapic_intsrc {int io_intsrc; } ;
struct ioapic {int io_id; int io_intbase; int io_numintr; struct ioapic_intsrc* io_pins; int io_pic; int * io_addr; } ;
typedef int ioapic_t ;


 int IOAPIC_VER ;
 int IOART_VER_VERSION ;
 int STAILQ_INSERT_TAIL (int *,struct ioapic*,int ) ;
 int icu_lock ;
 int intr_register_pic (int *) ;
 int io_next ;
 int ioapic_list ;
 int ioapic_read (int volatile*,int ) ;
 int ioapic_reprogram_intpin (int *) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int printf (char*,int,int,int,int,int) ;

void
ioapic_register(void *cookie)
{
 struct ioapic_intsrc *pin;
 struct ioapic *io;
 volatile ioapic_t *apic;
 uint32_t flags;
 int i;

 io = (struct ioapic *)cookie;
 apic = io->io_addr;
 mtx_lock_spin(&icu_lock);
 flags = ioapic_read(apic, IOAPIC_VER) & IOART_VER_VERSION;
 STAILQ_INSERT_TAIL(&ioapic_list, io, io_next);
 mtx_unlock_spin(&icu_lock);
 printf("ioapic%u <Version %u.%u> irqs %u-%u\n",
     io->io_id, flags >> 4, flags & 0xf, io->io_intbase,
     io->io_intbase + io->io_numintr - 1);





 intr_register_pic(&io->io_pic);
 for (i = 0, pin = io->io_pins; i < io->io_numintr; i++, pin++)
  ioapic_reprogram_intpin(&pin->io_intsrc);
}
