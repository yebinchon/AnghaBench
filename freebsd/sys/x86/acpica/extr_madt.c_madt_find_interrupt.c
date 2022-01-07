
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int io_vector; int * io_apic; } ;


 int ENOENT ;
 int IOAPIC_MAX_ID ;
 TYPE_1__* ioapics ;
 int printf (char*,int,int) ;

__attribute__((used)) static int
madt_find_interrupt(int intr, void **apic, u_int *pin)
{
 int i, best;

 best = -1;
 for (i = 0; i <= IOAPIC_MAX_ID; i++) {
  if (ioapics[i].io_apic == ((void*)0) ||
      ioapics[i].io_vector > intr)
   continue;
  if (best == -1 ||
      ioapics[best].io_vector < ioapics[i].io_vector)
   best = i;
 }
 if (best == -1)
  return (ENOENT);
 *apic = ioapics[best].io_apic;
 *pin = intr - ioapics[best].io_vector;
 if (*pin > 32)
  printf("WARNING: Found intpin of %u for vector %d\n", *pin,
      intr);
 return (0);
}
