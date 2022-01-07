
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct pcb* td_pcb; } ;
struct pcb {scalar_t__ pcb_dr0; scalar_t__ pcb_dr1; scalar_t__ pcb_dr2; scalar_t__ pcb_dr3; scalar_t__ pcb_dr6; scalar_t__ pcb_dr7; int pcb_flags; } ;
struct dbreg {scalar_t__* dr; } ;


 int DBREG_DR7_ACCESS (scalar_t__,int) ;
 scalar_t__ DBREG_DR7_ENABLED (scalar_t__,int) ;
 int DBREG_DR7_LEN (scalar_t__,int) ;
 int EINVAL ;
 int PCB_DBREGS ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int load_dr0 (scalar_t__) ;
 int load_dr1 (scalar_t__) ;
 int load_dr2 (scalar_t__) ;
 int load_dr3 (scalar_t__) ;
 int load_dr6 (scalar_t__) ;
 int load_dr7 (scalar_t__) ;

int
set_dbregs(struct thread *td, struct dbreg *dbregs)
{
 struct pcb *pcb;
 int i;

 if (td == ((void*)0)) {
  load_dr0(dbregs->dr[0]);
  load_dr1(dbregs->dr[1]);
  load_dr2(dbregs->dr[2]);
  load_dr3(dbregs->dr[3]);
  load_dr6(dbregs->dr[6]);
  load_dr7(dbregs->dr[7]);
 } else {






  for (i = 0; i < 4; i++) {
   if (DBREG_DR7_ACCESS(dbregs->dr[7], i) == 0x02)
    return (EINVAL);
   if (DBREG_DR7_LEN(dbregs->dr[7], i) == 0x02)
    return (EINVAL);
  }

  pcb = td->td_pcb;
  if (DBREG_DR7_ENABLED(dbregs->dr[7], 0)) {

   if (dbregs->dr[0] >= VM_MAXUSER_ADDRESS)
    return (EINVAL);
  }

  if (DBREG_DR7_ENABLED(dbregs->dr[7], 1)) {

   if (dbregs->dr[1] >= VM_MAXUSER_ADDRESS)
    return (EINVAL);
  }

  if (DBREG_DR7_ENABLED(dbregs->dr[7], 2)) {

   if (dbregs->dr[2] >= VM_MAXUSER_ADDRESS)
    return (EINVAL);
  }

  if (DBREG_DR7_ENABLED(dbregs->dr[7], 3)) {

   if (dbregs->dr[3] >= VM_MAXUSER_ADDRESS)
    return (EINVAL);
  }

  pcb->pcb_dr0 = dbregs->dr[0];
  pcb->pcb_dr1 = dbregs->dr[1];
  pcb->pcb_dr2 = dbregs->dr[2];
  pcb->pcb_dr3 = dbregs->dr[3];
  pcb->pcb_dr6 = dbregs->dr[6];
  pcb->pcb_dr7 = dbregs->dr[7];

  pcb->pcb_flags |= PCB_DBREGS;
 }

 return (0);
}
