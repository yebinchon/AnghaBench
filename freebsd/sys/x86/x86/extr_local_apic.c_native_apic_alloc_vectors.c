
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {scalar_t__* la_ioint_irqs; } ;


 size_t APIC_IO_INTS ;
 size_t APIC_NUM_IOINTS ;
 scalar_t__ IRQ_FREE ;
 int KASSERT (int,char*) ;
 int icu_lock ;
 TYPE_1__* lapics ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 size_t num_io_irqs ;
 int powerof2 (size_t) ;
 int printf (char*,size_t) ;

__attribute__((used)) static u_int
native_apic_alloc_vectors(u_int apic_id, u_int *irqs, u_int count, u_int align)
{
 u_int first, run, vector;

 KASSERT(powerof2(count), ("bad count"));
 KASSERT(powerof2(align), ("bad align"));
 KASSERT(align >= count, ("align < count"));
 run = 0;
 first = 0;
 mtx_lock_spin(&icu_lock);
 for (vector = 0; vector < APIC_NUM_IOINTS; vector++) {


  if (lapics[apic_id].la_ioint_irqs[vector] != IRQ_FREE) {
   run = 0;
   first = 0;
   continue;
  }


  if (run == 0) {
   if ((vector & (align - 1)) != 0)
    continue;
   first = vector;
  }
  run++;


  if (run < count)
   continue;


  for (vector = 0; vector < count; vector++)
   lapics[apic_id].la_ioint_irqs[first + vector] =
       irqs[vector];
  mtx_unlock_spin(&icu_lock);
  return (first + APIC_IO_INTS);
 }
 mtx_unlock_spin(&icu_lock);
 printf("APIC: Couldn't find APIC vectors for %u IRQs\n", count);
 return (0);
}
