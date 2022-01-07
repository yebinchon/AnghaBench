
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int pc_ipi_bitmap; } ;


 int IPI_BITMAP_VECTOR ;
 scalar_t__ IPI_IS_BITMAPED (int) ;
 int KASSERT (int,char*) ;
 scalar_t__ atomic_fcmpset_int (int*,int*,int) ;
 int* cpu_apic_ids ;
 TYPE_1__** cpuid_to_pcpu ;
 int lapic_ipi_vectored (int,int) ;

void
ipi_send_cpu(int cpu, u_int ipi)
{
 u_int bitmap, old, new;
 u_int *cpu_bitmap;

 KASSERT(cpu_apic_ids[cpu] != -1, ("IPI to non-existent CPU %d", cpu));

 if (IPI_IS_BITMAPED(ipi)) {
  bitmap = 1 << ipi;
  ipi = IPI_BITMAP_VECTOR;
  cpu_bitmap = &cpuid_to_pcpu[cpu]->pc_ipi_bitmap;
  old = *cpu_bitmap;
  for (;;) {
   if ((old & bitmap) == bitmap)
    break;
   new = old | bitmap;
   if (atomic_fcmpset_int(cpu_bitmap, &old, new))
    break;
  }
  if (old)
   return;
 }
 lapic_ipi_vectored(ipi, cpu_apic_ids[cpu]);
}
