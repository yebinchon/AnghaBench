
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tlb_nentries; } ;


 int VMWIRED_ENTRIES ;
 int cpu_identify () ;
 TYPE_1__ cpuinfo ;
 int mips_config_cache (TYPE_1__*) ;
 int mips_dcache_wbinv_all () ;
 int mips_get_identity (TYPE_1__*) ;
 int mips_icache_sync_all () ;
 int mips_vector_init () ;
 int mips_wr_wired (int ) ;
 int num_tlbentries ;
 int platform_cpu_init () ;
 int tlb_invalidate_all () ;

void
mips_cpu_init(void)
{
 platform_cpu_init();
 mips_get_identity(&cpuinfo);
 num_tlbentries = cpuinfo.tlb_nentries;
 mips_wr_wired(0);
 tlb_invalidate_all();
 mips_wr_wired(VMWIRED_ENTRIES);
 mips_config_cache(&cpuinfo);
 mips_vector_init();

 mips_icache_sync_all();
 mips_dcache_wbinv_all();

 cpu_identify();
}
