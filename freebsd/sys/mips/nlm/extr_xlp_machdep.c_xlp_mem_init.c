
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* vm_paddr_t ;
typedef int uint64_t ;
typedef int intmax_t ;


 int BRIDGE_DRAM_BAR (int) ;
 int BRIDGE_DRAM_LIMIT (int) ;
 scalar_t__ MIPS_KSEG0_TO_PHYS (int *) ;
 int XLP_MEM_LIM ;
 int _end ;
 int btoc (void*) ;
 void** dump_avail ;
 int mem_exclude_add (void**,int,int) ;
 int nlm_get_bridge_regbase (int ) ;
 int nlm_read_bridge_reg (int,int ) ;
 void** phys_avail ;
 int physmem ;
 int printf (char*,...) ;
 int realmem ;
 void* round_page (void*) ;
 void** xlp_mem_excl ;

__attribute__((used)) static void
xlp_mem_init(void)
{
 vm_paddr_t physsz, tmp;
 uint64_t bridgebase, base, lim, val;
 int i, j, k, n;


 tmp = (vm_paddr_t)MIPS_KSEG0_TO_PHYS(&_end);
 tmp = round_page(tmp) + 0x20000;
 xlp_mem_excl[1] = tmp;

 printf("Memory (from DRAM BARs):\n");
 bridgebase = nlm_get_bridge_regbase(0);
 physsz = 0;
        for (i = 0, j = 0; i < 8; i++) {
  val = nlm_read_bridge_reg(bridgebase, BRIDGE_DRAM_BAR(i));
                val = (val >> 12) & 0xfffff;
  base = val << 20;
  val = nlm_read_bridge_reg(bridgebase, BRIDGE_DRAM_LIMIT(i));
                val = (val >> 12) & 0xfffff;
  if (val == 0)
   continue;
                lim = (val + 1) << 20;
  printf("  BAR %d: %#jx - %#jx : ", i, (intmax_t)base,
      (intmax_t)lim);

  if (lim <= base) {
   printf("\tskipped - malformed %#jx -> %#jx\n",
       (intmax_t)base, (intmax_t)lim);
   continue;
  } else if (base >= XLP_MEM_LIM) {
   printf(" skipped - outside usable limit %#jx.\n",
       (intmax_t)XLP_MEM_LIM);
   continue;
  } else if (lim >= XLP_MEM_LIM) {
   lim = XLP_MEM_LIM;
   printf(" truncated to %#jx.\n", (intmax_t)XLP_MEM_LIM);
  } else
   printf(" usable\n");


  n = mem_exclude_add(&phys_avail[j], base, lim);
  for (k = j; k < j + n; k += 2) {
   physsz += phys_avail[k + 1] - phys_avail[k];
   printf("\tMem[%d]: %#jx - %#jx\n", k/2,
       (intmax_t)phys_avail[k], (intmax_t)phys_avail[k+1]);
  }
  j = k;
        }


 phys_avail[j] = phys_avail[j + 1] = 0;


 for (i = 0; i <= j + 1; i++)
  dump_avail[i] = phys_avail[i];

 realmem = physmem = btoc(physsz);
}
