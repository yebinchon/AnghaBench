
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;


 int CPUID_MCA ;
 int MCE ;
 int MCG_STATUS_MCIP ;
 int MCG_STATUS_RIPV ;
 int MSR_MCG_STATUS ;
 int MSR_P5_MC_ADDR ;
 int MSR_P5_MC_TYPE ;
 int cpu_feature ;
 int cpu_spinwait () ;
 int mca_scan (int ,int*) ;
 int panic (char*) ;
 int printf (char*,int ,int ) ;
 int rdmsr (int ) ;
 int wrmsr (int ,int) ;

void
mca_intr(void)
{
 uint64_t mcg_status;
 int recoverable, count;

 if (!(cpu_feature & CPUID_MCA)) {




  printf("MC Type: 0x%jx  Address: 0x%jx\n",
      (uintmax_t)rdmsr(MSR_P5_MC_TYPE),
      (uintmax_t)rdmsr(MSR_P5_MC_ADDR));
  panic("Machine check");
 }


 count = mca_scan(MCE, &recoverable);
 mcg_status = rdmsr(MSR_MCG_STATUS);
 if (!(mcg_status & MCG_STATUS_RIPV))
  recoverable = 0;

 if (!recoverable) {





  while (count == 0)
   cpu_spinwait();

  panic("Unrecoverable machine check exception");
 }


 wrmsr(MSR_MCG_STATUS, mcg_status & ~MCG_STATUS_MCIP);
}
