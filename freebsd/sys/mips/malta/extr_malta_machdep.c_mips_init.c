
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;


 int KDB_WHY_BOOTFLAGS ;
 int MIPS_KSEG0_TO_PHYS (int ) ;
 int PHYS_AVAIL_ENTRIES ;
 int RB_KDB ;
 int boothowto ;
 int* dump_avail ;
 int init_param1 () ;
 int init_param2 (int ) ;
 int kdb_enter (int ,char*) ;
 int kdb_init () ;
 int kernel_kseg0_end ;
 int mips_cpu_init () ;
 int mips_proc0_init () ;
 int mutex_init () ;
 int* phys_avail ;
 int physmem ;
 int pmap_bootstrap () ;
 int realmem ;

__attribute__((used)) static void
mips_init(unsigned long memsize, uint64_t ememsize)
{
 int i;

 for (i = 0; i < PHYS_AVAIL_ENTRIES; i++) {
  phys_avail[i] = 0;
 }
 phys_avail[0] = MIPS_KSEG0_TO_PHYS(kernel_kseg0_end);
 phys_avail[1] = memsize;
 dump_avail[0] = 0;
 dump_avail[1] = phys_avail[1];


 if (ememsize > memsize) {
  phys_avail[2] = 0x90000000;
  phys_avail[3] = 0x90000000 + (ememsize - memsize);
  dump_avail[2] = phys_avail[2];
  dump_avail[3] = phys_avail[3];
 }


 physmem = realmem;

 init_param1();
 init_param2(physmem);
 mips_cpu_init();
 pmap_bootstrap();
 mips_proc0_init();
 mutex_init();
 kdb_init();




}
