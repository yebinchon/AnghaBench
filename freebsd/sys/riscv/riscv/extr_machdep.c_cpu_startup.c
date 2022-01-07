
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int uintmax_t ;


 int PAGE_SIZE ;
 scalar_t__ bootverbose ;
 int bufinit () ;
 int devmap_print_table () ;
 int identify_cpu () ;
 int kmi ;
 scalar_t__* phys_avail ;
 int printf (char*,...) ;
 int ptoa (int) ;
 scalar_t__ realmem ;
 int sbi_print_version () ;
 scalar_t__ vm_free_count () ;
 int vm_ksubmap_init (int *) ;
 int vm_pager_bufferinit () ;

__attribute__((used)) static void
cpu_startup(void *dummy)
{

 sbi_print_version();
 identify_cpu();

 printf("real memory  = %ju (%ju MB)\n", ptoa((uintmax_t)realmem),
     ptoa((uintmax_t)realmem) / (1024 * 1024));




 if (bootverbose) {
  int indx;

  printf("Physical memory chunk(s):\n");
  for (indx = 0; phys_avail[indx + 1] != 0; indx += 2) {
   vm_paddr_t size;

   size = phys_avail[indx + 1] - phys_avail[indx];
   printf(
       "0x%016jx - 0x%016jx, %ju bytes (%ju pages)\n",
       (uintmax_t)phys_avail[indx],
       (uintmax_t)phys_avail[indx + 1] - 1,
       (uintmax_t)size, (uintmax_t)size / PAGE_SIZE);
  }
 }

 vm_ksubmap_init(&kmi);

 printf("avail memory = %ju (%ju MB)\n",
     ptoa((uintmax_t)vm_free_count()),
     ptoa((uintmax_t)vm_free_count()) / (1024 * 1024));
 if (bootverbose)
  devmap_print_table();

 bufinit();
 vm_pager_bufferinit();
}
