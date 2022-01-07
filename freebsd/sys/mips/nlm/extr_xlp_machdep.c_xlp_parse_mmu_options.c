
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_long ;


 scalar_t__ CHIP_PROCESSOR_ID_XLP_416 ;
 int MAXCPU ;
 int SYS_CPU_RESET ;
 int XLP_MAX_CORES ;
 int nlm_get_sys_regbase (int ) ;
 scalar_t__ nlm_processor_id () ;
 int nlm_read_sys_reg (int ,int ) ;
 int panic (char*) ;
 int printf (char*,int ,...) ;
 int* xlp_cpuid_to_hwtid ;
 int xlp_hw_thread_mask ;
 int* xlp_hwtid_to_cpuid ;
 int xlp_mmuval ;
 int xlp_ncores ;
 int xlp_threads_per_core ;

__attribute__((used)) static void
xlp_parse_mmu_options(void)
{
 uint64_t sysbase;
 uint32_t cpu_map = xlp_hw_thread_mask;
 uint32_t core0_thr_mask, core_thr_mask, cpu_rst_mask;
 int i, j, k;





 if (cpu_map == 0)
  cpu_map = 0x1;
 else if (cpu_map != 0x1) {
  printf("WARNING: Starting uniprocessor kernel on cpumask [0x%lx]!\n"
      "WARNING: Other CPUs will be unused.\n", (u_long)cpu_map);
  cpu_map = 0x1;
 }


 xlp_ncores = 1;
 core0_thr_mask = cpu_map & 0xf;
 switch (core0_thr_mask) {
 case 1:
  xlp_threads_per_core = 1;
  xlp_mmuval = 0;
  break;
 case 3:
  xlp_threads_per_core = 2;
  xlp_mmuval = 2;
  break;
 case 0xf:
  xlp_threads_per_core = 4;
  xlp_mmuval = 3;
  break;
 default:
  goto unsupp;
 }


 sysbase = nlm_get_sys_regbase(0);
 cpu_rst_mask = nlm_read_sys_reg(sysbase, SYS_CPU_RESET) & 0xff;


 if (nlm_processor_id() == CHIP_PROCESSOR_ID_XLP_416)
  cpu_rst_mask = 0xe;


 for (i = 1; i < XLP_MAX_CORES; i++) {
  if ((cpu_rst_mask & (1 << i)) == 0)
   cpu_map &= ~(0xfu << (4 * i));
 }


 for (i = 1; i < XLP_MAX_CORES; i++) {
  core_thr_mask = (cpu_map >> (4 * i)) & 0xf;
  if (core_thr_mask == 0)
   continue;
  if (core_thr_mask != core0_thr_mask)
   goto unsupp;
  xlp_ncores++;
 }

 xlp_hw_thread_mask = cpu_map;

 for (i = 0; i< MAXCPU; i++)
  xlp_cpuid_to_hwtid[i] =
      xlp_hwtid_to_cpuid[i] = -1;
 for (i = 0, k = 0; i < XLP_MAX_CORES; i++) {
  if (((cpu_map >> (i * 4)) & 0xf) == 0)
   continue;
  for (j = 0; j < xlp_threads_per_core; j++) {
   xlp_cpuid_to_hwtid[k] = i * 4 + j;
   xlp_hwtid_to_cpuid[i * 4 + j] = k;
   k++;
  }
 }

 return;

unsupp:
 printf("ERROR : Unsupported CPU mask [use 1,2 or 4 threads per core].\n"
     "\tcore0 thread mask [%lx], boot cpu mask [%lx].\n",
     (u_long)core0_thr_mask, (u_long)cpu_map);
 panic("Invalid CPU mask - halting.\n");
 return;
}
