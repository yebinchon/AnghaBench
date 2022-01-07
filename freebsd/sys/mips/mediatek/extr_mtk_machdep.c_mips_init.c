
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mem_region {scalar_t__ mr_start; scalar_t__ mr_size; } ;


 int FDT_MEM_REGIONS ;
 int KASSERT (int,char*) ;
 int KDB_WHY_BOOTFLAGS ;
 scalar_t__ MIN (scalar_t__,int) ;
 scalar_t__ MIPS_KSEG0_TO_PHYS (int ) ;
 scalar_t__ MTK_SOC_MT7621 ;
 scalar_t__ MTK_SOC_RT2880 ;
 int RB_KDB ;
 int boothowto ;
 int bootverbose ;
 scalar_t__ btoc (int) ;
 int ctob (scalar_t__) ;
 scalar_t__* dump_avail ;
 scalar_t__ fdt_get_mem_regions (struct mem_region*,int*,int*) ;
 int init_param1 () ;
 int init_param2 (scalar_t__) ;
 int kdb_enter (int ,char*) ;
 int kdb_init () ;
 char* kern_getenv (char*) ;
 int kernel_kseg0_end ;
 int mips_cpu_init () ;
 int mips_proc0_init () ;
 scalar_t__ mtk_soc_get_socid () ;
 int mutex_init () ;
 scalar_t__* phys_avail ;
 scalar_t__ physmem ;
 int pmap_bootstrap () ;
 int printf (char*,...) ;
 scalar_t__ realmem ;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static void
mips_init(void)
{
 struct mem_region mr[FDT_MEM_REGIONS];
 uint64_t val;
 int i, j, mr_cnt;
 char *memsize;

 printf("entry: mips_init()\n");

 bootverbose = 1;

 for (i = 0; i < 10; i++)
  phys_avail[i] = 0;

 dump_avail[0] = phys_avail[0] = MIPS_KSEG0_TO_PHYS(kernel_kseg0_end);





 realmem = btoc(448 * 1024 * 1024);

 if (fdt_get_mem_regions(mr, &mr_cnt, &val) == 0) {
  physmem = btoc(val);

  printf("RAM size: %ldMB (from FDT)\n",
      ctob(physmem) / (1024 * 1024));

  KASSERT((phys_avail[0] >= mr[0].mr_start) && (phys_avail[0] < (mr[0].mr_start + mr[0].mr_size)),

   ("First region is not within FDT memory range"));


  phys_avail[1] = (mr[0].mr_start +
      MIN(mr[0].mr_size, ctob(realmem)));
  dump_avail[1] = phys_avail[1];


  for (i = 1, j = 2; i < mr_cnt; i++, j+=2) {
   phys_avail[j] = mr[i].mr_start;
   phys_avail[j+1] = (mr[i].mr_start + mr[i].mr_size);
   dump_avail[j] = phys_avail[j];
   dump_avail[j+1] = phys_avail[j+1];
  }
 } else {
  if ((memsize = kern_getenv("memsize")) != ((void*)0)) {
   physmem = btoc(strtol(memsize, ((void*)0), 0) << 20);
   printf("RAM size: %ldMB (from memsize)\n",
       ctob(physmem) / (1024 * 1024));
  } else {
   physmem = btoc(32 * 1024 * 1024);
   printf("RAM size: %ldMB (assumed)\n",
       ctob(physmem) / (1024 * 1024));
  }

  if (mtk_soc_get_socid() == MTK_SOC_RT2880) {

   dump_avail[1] = phys_avail[1] = ctob(physmem)
       + 0x08000000;
  } else if (ctob(physmem) < (448 * 1024 * 1024)) {




   dump_avail[1] = phys_avail[1] = ctob(physmem);
  } else if (mtk_soc_get_socid() == MTK_SOC_MT7621) {




   phys_avail[1] = 448 * 1024 * 1024;
   phys_avail[2] = 0x20000000;
   phys_avail[3] = phys_avail[2] + ctob(physmem) -
       phys_avail[1];
   dump_avail[1] = phys_avail[1] - phys_avail[0];
   dump_avail[2] = phys_avail[2];
   dump_avail[3] = phys_avail[3] - phys_avail[2];
  } else {





   printf("Unknown chip, assuming 32MB RAM\n");
   physmem = btoc(32 * 1024 * 1024);
   dump_avail[1] = phys_avail[1] = ctob(physmem);
  }
 }

 if (physmem < realmem)
  realmem = physmem;

 init_param1();
 init_param2(physmem);
 mips_cpu_init();
 pmap_bootstrap();
 mips_proc0_init();
 mutex_init();
 kdb_init();




}
