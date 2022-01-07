
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_int ;
struct mca_record {int mr_status; int mr_bank; void* mr_cpu; int mr_cpu_vendor_id; int mr_cpu_id; void* mr_mcg_status; void* mr_mcg_cap; void* mr_apic_id; int mr_tsc; void* mr_misc; void* mr_addr; } ;
struct TYPE_2__ {int (* status ) (int) ;int (* misc ) (int) ;int (* addr ) (int) ;} ;


 int MC_STATUS_ADDRV ;
 int MC_STATUS_MISCV ;
 int MC_STATUS_PCC ;
 int MC_STATUS_UC ;
 int MC_STATUS_VAL ;
 int MSR_MCG_CAP ;
 int MSR_MCG_STATUS ;
 void* PCPU_GET (int ) ;
 int apic_id ;
 int cpu_id ;
 int cpu_vendor_id ;
 int cpuid ;
 int do_cpuid (int ,int *) ;
 TYPE_1__ mca_msr_ops ;
 void* rdmsr (int ) ;
 int rdtsc () ;
 int stub1 (int) ;
 int stub2 (int) ;
 int stub3 (int) ;
 int stub4 (int) ;
 int wrmsr (int ,int ) ;

__attribute__((used)) static int
mca_check_status(int bank, struct mca_record *rec)
{
 uint64_t status;
 u_int p[4];

 status = rdmsr(mca_msr_ops.status(bank));
 if (!(status & MC_STATUS_VAL))
  return (0);


 rec->mr_status = status;
 rec->mr_bank = bank;
 rec->mr_addr = 0;
 if (status & MC_STATUS_ADDRV)
  rec->mr_addr = rdmsr(mca_msr_ops.addr(bank));
 rec->mr_misc = 0;
 if (status & MC_STATUS_MISCV)
  rec->mr_misc = rdmsr(mca_msr_ops.misc(bank));
 rec->mr_tsc = rdtsc();
 rec->mr_apic_id = PCPU_GET(apic_id);
 rec->mr_mcg_cap = rdmsr(MSR_MCG_CAP);
 rec->mr_mcg_status = rdmsr(MSR_MCG_STATUS);
 rec->mr_cpu_id = cpu_id;
 rec->mr_cpu_vendor_id = cpu_vendor_id;
 rec->mr_cpu = PCPU_GET(cpuid);





 if (!(rec->mr_status & (MC_STATUS_PCC | MC_STATUS_UC))) {
  wrmsr(mca_msr_ops.status(bank), 0);
  do_cpuid(0, p);
 }
 return (1);
}
