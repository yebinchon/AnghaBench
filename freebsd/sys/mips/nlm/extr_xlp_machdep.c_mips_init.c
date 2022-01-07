
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cache_coherent_dma; } ;


 int RB_KDB ;
 int TRUE ;
 int boothowto ;
 TYPE_1__ cpuinfo ;
 int init_param1 () ;
 int init_param2 (int ) ;
 int kdb_enter (char*,int *) ;
 int kdb_init () ;
 int mips_cpu_init () ;
 int mips_proc0_init () ;
 int mutex_init () ;
 int physmem ;
 int pmap_bootstrap () ;

__attribute__((used)) static void
mips_init(void)
{
 init_param1();
 init_param2(physmem);

 mips_cpu_init();
 cpuinfo.cache_coherent_dma = TRUE;
 pmap_bootstrap();
 mips_proc0_init();
 mutex_init();






}
