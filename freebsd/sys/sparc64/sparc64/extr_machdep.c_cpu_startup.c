
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
struct TYPE_2__ {scalar_t__ mr_size; } ;


 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 long PAGE_SIZE ;
 int PCPU_GET (int ) ;
 int SHUTDOWN_PRI_LAST ;
 scalar_t__ bootverbose ;
 int bufinit () ;
 int clock ;
 int cpu_identify (int ,int ,int ) ;
 int curcpu ;
 int kmi ;
 int printf (char*,...) ;
 int rdpr (int ) ;
 long realmem ;
 int shutdown_final ;
 TYPE_1__* sparc64_memreg ;
 char* sparc64_model ;
 int sparc64_nmemreg ;
 int sparc64_shutdown_final ;
 int ver ;
 int vm_free_count () ;
 int vm_ksubmap_init (int *) ;
 int vm_pager_bufferinit () ;

__attribute__((used)) static void
cpu_startup(void *arg)
{
 vm_paddr_t physsz;
 int i;

 physsz = 0;
 for (i = 0; i < sparc64_nmemreg; i++)
  physsz += sparc64_memreg[i].mr_size;
 printf("real memory  = %lu (%lu MB)\n", physsz,
     physsz / (1024 * 1024));
 realmem = (long)physsz / PAGE_SIZE;

 vm_ksubmap_init(&kmi);

 bufinit();
 vm_pager_bufferinit();

 EVENTHANDLER_REGISTER(shutdown_final, sparc64_shutdown_final, ((void*)0),
     SHUTDOWN_PRI_LAST);

 printf("avail memory = %lu (%lu MB)\n", vm_free_count() * PAGE_SIZE,
     vm_free_count() / ((1024 * 1024) / PAGE_SIZE));

 if (bootverbose)
  printf("machine: %s\n", sparc64_model);

 cpu_identify(rdpr(ver), PCPU_GET(clock), curcpu);
}
