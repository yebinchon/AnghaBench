
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic {int dummy; } ;
struct ioapic {int io_numintr; int * io_pins; } ;


 int icu_lock ;
 int ioapic_program_intpin (int *) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static void
ioapic_resume(struct pic *pic, bool suspend_cancelled)
{
 struct ioapic *io = (struct ioapic *)pic;
 int i;

 mtx_lock_spin(&icu_lock);
 for (i = 0; i < io->io_numintr; i++)
  ioapic_program_intpin(&io->io_pins[i]);
 mtx_unlock_spin(&icu_lock);
}
