
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int BCM_TRACE (char*,scalar_t__) ;
 scalar_t__ CFE_MI_AVAILABLE ;
 int KDB_WHY_BOOTFLAGS ;
 scalar_t__ MIPS_KSEG0_TO_PHYS (int ) ;
 int RB_KDB ;
 int boothowto ;
 scalar_t__ btoc (scalar_t__) ;
 int cfe_enummem (int,int ,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__* dump_avail ;
 int init_param1 () ;
 int init_param2 (scalar_t__) ;
 int kdb_enter (int ,char*) ;
 int kdb_init () ;
 int kernel_kseg0_end ;
 int mips_cpu_init () ;
 int mips_proc0_init () ;
 int mutex_init () ;
 scalar_t__* phys_avail ;
 scalar_t__ physmem ;
 int pmap_bootstrap () ;
 int printf (char*) ;
 scalar_t__ realmem ;

__attribute__((used)) static void
mips_init(void)
{
 int i, j;

 printf("entry: mips_init()\n");
 for (j = 0; j < i; j++)
  dump_avail[j] = phys_avail[j];

 physmem = realmem;

 init_param1();
 init_param2(physmem);
 mips_cpu_init();
 pmap_bootstrap();
 mips_proc0_init();
 mutex_init();
 kdb_init();




}
