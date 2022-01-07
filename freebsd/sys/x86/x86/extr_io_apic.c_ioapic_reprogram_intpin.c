
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioapic_intsrc {int dummy; } ;
struct intsrc {int dummy; } ;


 int icu_lock ;
 int ioapic_program_intpin (struct ioapic_intsrc*) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static void
ioapic_reprogram_intpin(struct intsrc *isrc)
{

 mtx_lock_spin(&icu_lock);
 ioapic_program_intpin((struct ioapic_intsrc *)isrc);
 mtx_unlock_spin(&icu_lock);
}
