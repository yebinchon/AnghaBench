
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct pcpu {int pc_next_asid; int pc_asid_generation; struct pcpu* pc_self; } ;


 scalar_t__ VM_MAX_KERNEL_ADDRESS ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 int mips_pcpu_tlb_init (struct pcpu*) ;
 scalar_t__ pcpup ;

void
cpu_pcpu_init(struct pcpu *pcpu, int cpuid, size_t size)
{

 pcpu->pc_next_asid = 1;
 pcpu->pc_asid_generation = 1;
 pcpu->pc_self = pcpu;






}
