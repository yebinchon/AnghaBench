
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct thread {TYPE_1__* td_pcb; } ;
struct TYPE_2__ {int pcb_flags; } ;


 int PCB_CDSCR ;
 int PCB_CFSCR ;
 int SPR_DSCRP ;
 int SPR_FSCR ;
 struct thread* curthread ;
 int mtspr (int ,int ) ;

__attribute__((used)) static void
cleanup_power_extras(struct thread *td)
{
 uint32_t pcb_flags;

 if (td != curthread)
  return;

 pcb_flags = td->td_pcb->pcb_flags;

 if (pcb_flags & PCB_CFSCR)
  mtspr(SPR_FSCR, 0);
 if (pcb_flags & PCB_CDSCR)
  mtspr(SPR_DSCRP, 0);
}
