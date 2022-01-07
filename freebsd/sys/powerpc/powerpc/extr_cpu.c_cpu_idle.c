
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {scalar_t__ md_saved_msr; } ;
struct thread {TYPE_1__ td_md; } ;
typedef int sbintime_t ;


 int CTR2 (int ,char*,int,int ) ;
 int KTR_SPARE2 ;
 int PSL_EE ;
 int cpu_activeclock () ;
 int cpu_idle_hook (int) ;
 int cpu_idleclock () ;
 int critical_enter () ;
 int critical_exit () ;
 int curcpu ;
 struct thread* curthread ;
 int mfmsr () ;
 int panic (char*) ;
 int printf (char*,int ) ;

void
cpu_idle(int busy)
{
 sbintime_t sbt = -1;
 CTR2(KTR_SPARE2, "cpu_idle(%d) at %d",
     busy, curcpu);

 if (cpu_idle_hook != ((void*)0)) {
  if (!busy) {
   critical_enter();
   sbt = cpu_idleclock();
  }
  cpu_idle_hook(sbt);
  if (!busy) {
   cpu_activeclock();
   critical_exit();
  }
 }

 CTR2(KTR_SPARE2, "cpu_idle(%d) at %d done",
     busy, curcpu);
}
