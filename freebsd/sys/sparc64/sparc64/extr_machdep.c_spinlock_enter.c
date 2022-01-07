
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int md_spinlock_count; int md_saved_pil; } ;
struct thread {TYPE_1__ td_md; } ;
typedef int register_t ;


 int PIL_TICK ;
 int critical_enter () ;
 struct thread* curthread ;
 int rdpr (int ) ;
 int wrpr (int ,int ,int ) ;

void
spinlock_enter(void)
{
 struct thread *td;
 register_t pil;

 td = curthread;
 if (td->td_md.md_spinlock_count == 0) {
  pil = rdpr(pil);
  wrpr(pil, 0, PIL_TICK);
  td->td_md.md_spinlock_count = 1;
  td->td_md.md_saved_pil = pil;
 } else
  td->td_md.md_spinlock_count++;
 critical_enter();
}
