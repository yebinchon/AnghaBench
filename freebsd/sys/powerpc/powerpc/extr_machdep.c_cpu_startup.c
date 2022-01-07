
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int uintmax_t ;


 int PAGE_SIZE ;
 int PCPU_GET (int ) ;
 scalar_t__ bootverbose ;
 int bufinit () ;
 int cpu_setup (int ) ;
 int cpuid ;
 int decr_init () ;
 int kmi ;
 int perfmon_init () ;
 scalar_t__* phys_avail ;
 scalar_t__ physmem ;
 int printf (char*,...) ;
 int ptoa (int) ;
 scalar_t__ realmem ;
 int virtual_avail ;
 int virtual_end ;
 scalar_t__ vm_free_count () ;
 int vm_ksubmap_init (int *) ;
 int vm_pager_bufferinit () ;

__attribute__((used)) static void
cpu_startup(void *dummy)
{




 decr_init();




 cpu_setup(PCPU_GET(cpuid));




 printf("real memory  = %ju (%ju MB)\n", ptoa((uintmax_t)physmem),
     ptoa((uintmax_t)physmem) / 1048576);
 realmem = physmem;

 if (bootverbose)
  printf("available KVA = %zu (%zu MB)\n",
      virtual_end - virtual_avail,
      (virtual_end - virtual_avail) / 1048576);




 if (bootverbose) {
  int indx;

  printf("Physical memory chunk(s):\n");
  for (indx = 0; phys_avail[indx + 1] != 0; indx += 2) {
   vm_paddr_t size1 =
       phys_avail[indx + 1] - phys_avail[indx];




   printf("0x%09jx - 0x%09jx, %ju bytes (%ju pages)\n",

       (uintmax_t)phys_avail[indx],
       (uintmax_t)phys_avail[indx + 1] - 1,
       (uintmax_t)size1, (uintmax_t)size1 / PAGE_SIZE);
  }
 }

 vm_ksubmap_init(&kmi);

 printf("avail memory = %ju (%ju MB)\n",
     ptoa((uintmax_t)vm_free_count()),
     ptoa((uintmax_t)vm_free_count()) / 1048576);




 bufinit();
 vm_pager_bufferinit();
}
