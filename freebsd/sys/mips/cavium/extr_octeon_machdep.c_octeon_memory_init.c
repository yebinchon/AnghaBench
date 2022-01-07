
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int int64_t ;
struct TYPE_2__ {scalar_t__ board_type; } ;


 scalar_t__ CVMX_BOARD_TYPE_SIM ;
 int MIPS_DIRECT_MAPPABLE (int) ;
 int MIPS_KSEG0_TO_PHYS (int ) ;
 int PAGE_SIZE ;
 unsigned int PHYS_AVAIL_ENTRIES ;
 scalar_t__ btoc (int) ;
 int cvmx_bootmem_available_mem (int) ;
 int cvmx_bootmem_phy_alloc (int,int,int,int ,int ) ;
 TYPE_1__* cvmx_sysinfo_get () ;
 int* dump_avail ;
 int end ;
 int* phys_avail ;
 scalar_t__ physmem ;
 scalar_t__ realmem ;
 int round_page (int ) ;

__attribute__((used)) static void
octeon_memory_init(void)
{
 vm_paddr_t phys_end;
 int64_t addr;
 unsigned i, j;

 phys_end = round_page(MIPS_KSEG0_TO_PHYS((vm_offset_t)&end));

 if (cvmx_sysinfo_get()->board_type == CVMX_BOARD_TYPE_SIM) {

  phys_avail[0] = phys_end;
  phys_avail[1] = 96 << 20;

  dump_avail[0] = phys_avail[0];
  dump_avail[1] = phys_avail[1];

  realmem = physmem = btoc(phys_avail[1] - phys_avail[0]);
  return;
 }





 i = 0;
 while (i < PHYS_AVAIL_ENTRIES) {





  if (cvmx_bootmem_available_mem(128) < 2 << 20)
   break;

  addr = cvmx_bootmem_phy_alloc(1 << 20, phys_end,
           ~(vm_paddr_t)0, PAGE_SIZE, 0);
  if (addr == -1)
   break;
  if (!MIPS_DIRECT_MAPPABLE(addr + (1 << 20) - 1))
   continue;


  physmem += btoc(1 << 20);

  if (i > 0 && phys_avail[i - 1] == addr) {
   phys_avail[i - 1] += 1 << 20;
   continue;
  }

  phys_avail[i + 0] = addr;
  phys_avail[i + 1] = addr + (1 << 20);

  i += 2;
 }

 for (j = 0; j < i; j++)
  dump_avail[j] = phys_avail[j];

 realmem = physmem;
}
