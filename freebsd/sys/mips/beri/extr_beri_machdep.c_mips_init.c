
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mem_region {scalar_t__ mr_start; scalar_t__ mr_size; } ;


 int FDT_MEM_REGIONS ;
 int KASSERT (int,char*) ;
 int KDB_WHY_BOOTFLAGS ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ MIPS_KSEG0_TO_PHYS (int ) ;
 int RB_KDB ;
 int boothowto ;
 int btoc (int ) ;
 scalar_t__ ctob (int ) ;
 scalar_t__* dump_avail ;
 scalar_t__ fdt_get_mem_regions (struct mem_region*,int*,int *) ;
 int init_param1 () ;
 int init_param2 (int ) ;
 int kdb_enter (int ,char*) ;
 int kdb_init () ;
 int kernel_kseg0_end ;
 int mips_cpu_init () ;
 int mips_proc0_init () ;
 int mutex_init () ;
 scalar_t__* phys_avail ;
 int physmem ;
 int pmap_bootstrap () ;
 int realmem ;

__attribute__((used)) static void
mips_init(void)
{
 int i;







 for (i = 0; i < 10; i++) {
  phys_avail[i] = 0;
 }


 phys_avail[0] = MIPS_KSEG0_TO_PHYS(kernel_kseg0_end);
 phys_avail[1] = ctob(realmem);

 dump_avail[0] = phys_avail[0];
 dump_avail[1] = phys_avail[1];

 physmem = realmem;
 init_param1();
 init_param2(physmem);
 mips_cpu_init();
 pmap_bootstrap();
 mips_proc0_init();
 mutex_init();
 kdb_init();




}
