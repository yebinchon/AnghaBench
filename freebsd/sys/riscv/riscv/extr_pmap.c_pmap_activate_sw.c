
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u_int ;
struct thread {TYPE_1__* td_proc; } ;
typedef TYPE_2__* pmap_t ;
struct TYPE_6__ {int pm_active; int pm_satp; } ;
struct TYPE_5__ {int p_vmspace; } ;


 int CPU_CLR (void*,int *) ;
 int CPU_CLR_ATOMIC (void*,int *) ;
 int CPU_SET (void*,int *) ;
 int CPU_SET_ATOMIC (void*,int *) ;
 void* PCPU_GET (void*) ;
 int PCPU_SET (void*,TYPE_2__*) ;
 void* curpmap ;
 int load_satp (int ) ;
 int sfence_vma () ;
 TYPE_2__* vmspace_pmap (int ) ;

void
pmap_activate_sw(struct thread *td)
{
 pmap_t oldpmap, pmap;
 u_int hart;

 oldpmap = PCPU_GET(curpmap);
 pmap = vmspace_pmap(td->td_proc->p_vmspace);
 if (pmap == oldpmap)
  return;
 load_satp(pmap->pm_satp);

 hart = PCPU_GET(hart);




 CPU_SET(hart, &pmap->pm_active);
 CPU_CLR(hart, &oldpmap->pm_active);

 PCPU_SET(curpmap, pmap);

 sfence_vma();
}
