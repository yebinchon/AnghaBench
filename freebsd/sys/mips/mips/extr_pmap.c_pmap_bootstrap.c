
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int uintmax_t ;
struct pcpu {int dummy; } ;
struct msgbuf {int dummy; } ;


 int KSTACK_PAGES ;
 int MIPS_DIRECT_MAPPABLE (scalar_t__) ;
 scalar_t__ Maxmem ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PCPU_ADDR (int ) ;
 int VMNUM_PIDS ;
 int VM_MAX_KERNEL_ADDRESS ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 scalar_t__ atop (scalar_t__) ;
 scalar_t__ bootverbose ;
 scalar_t__ kstack0 ;
 int mips_pcpu_tlb_init (int ) ;
 int mips_wr_entryhi (int ) ;
 int mips_wr_pagemask (int ) ;
 int msgbufinit (struct msgbuf*,int) ;
 struct msgbuf* msgbufp ;
 int msgbufsize ;
 int need_local_mappings ;
 struct pcpu* pcpup ;
 scalar_t__* phys_avail ;
 scalar_t__* physmem_desc ;
 int pmap_alloc_lmem_map () ;
 int pmap_create_kernel_pagetable () ;
 int pmap_max_asid ;
 scalar_t__ pmap_steal_memory (int) ;
 int printf (char*,...) ;
 struct pcpu* ptoa (int) ;
 int pvh_global_lock ;
 scalar_t__ round_page (scalar_t__) ;
 scalar_t__ roundup2 (scalar_t__,int) ;
 int rw_init (int *,char*) ;
 scalar_t__ trunc_page (scalar_t__) ;
 scalar_t__ virtual_avail ;
 int virtual_end ;

void
pmap_bootstrap(void)
{
 int i;


again:
 for (i = 0; phys_avail[i + 1] != 0; i += 2) {



  phys_avail[i] = round_page(phys_avail[i]);
  phys_avail[i + 1] = trunc_page(phys_avail[i + 1]);

  if (i < 2)
   continue;
  if (phys_avail[i - 2] > phys_avail[i]) {
   vm_paddr_t ptemp[2];

   ptemp[0] = phys_avail[i + 0];
   ptemp[1] = phys_avail[i + 1];

   phys_avail[i + 0] = phys_avail[i - 2];
   phys_avail[i + 1] = phys_avail[i - 1];

   phys_avail[i - 2] = ptemp[0];
   phys_avail[i - 1] = ptemp[1];
   goto again;
  }
 }






 if (!MIPS_DIRECT_MAPPABLE(phys_avail[i - 1] - 1))
  need_local_mappings = 1;




 for (i = 0; phys_avail[i + 1] != 0; i += 2) {
  physmem_desc[i] = phys_avail[i];
  physmem_desc[i + 1] = phys_avail[i + 1];
 }

 Maxmem = atop(phys_avail[i - 1]);

 if (bootverbose) {
  printf("Physical memory chunk(s):\n");
  for (i = 0; phys_avail[i + 1] != 0; i += 2) {
   vm_paddr_t size;

   size = phys_avail[i + 1] - phys_avail[i];
   printf("%#08jx - %#08jx, %ju bytes (%ju pages)\n",
       (uintmax_t) phys_avail[i],
       (uintmax_t) phys_avail[i + 1] - 1,
       (uintmax_t) size, (uintmax_t) size / PAGE_SIZE);
  }
  printf("Maxmem is 0x%0jx\n", ptoa((uintmax_t)Maxmem));
 }



 msgbufp = (struct msgbuf *)pmap_steal_memory(msgbufsize);
 msgbufinit(msgbufp, msgbufsize);




 kstack0 = pmap_steal_memory(KSTACK_PAGES << PAGE_SHIFT);

 virtual_avail = VM_MIN_KERNEL_ADDRESS;
 virtual_end = VM_MAX_KERNEL_ADDRESS;
 pmap_create_kernel_pagetable();
 if (need_local_mappings)
  pmap_alloc_lmem_map();
 pmap_max_asid = VMNUM_PIDS;
 mips_wr_entryhi(0);
 mips_wr_pagemask(0);




 rw_init(&pvh_global_lock, "pmap pv global");
}
