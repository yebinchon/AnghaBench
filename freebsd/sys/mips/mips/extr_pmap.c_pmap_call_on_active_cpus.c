
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* pmap_t ;
struct TYPE_6__ {TYPE_1__* pm_asid; int pm_active; } ;
struct TYPE_5__ {scalar_t__ gen; } ;


 int CPU_ISSET (int,int *) ;
 int PCPU_GET (int) ;
 scalar_t__ is_kernel_pmap (TYPE_2__*) ;

__attribute__((used)) static __inline void
pmap_call_on_active_cpus(pmap_t pmap, void (*fn)(void *), void *arg)
{
 int cpuid;

 if (is_kernel_pmap(pmap)) {
  fn(arg);
  return;
 }
 cpuid = PCPU_GET(cpuid);
 if (!CPU_ISSET(cpuid, &pmap->pm_active))
  pmap->pm_asid[cpuid].gen = 0;
 else
  fn(arg);
}
