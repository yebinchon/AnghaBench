
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct thread {TYPE_1__* td_proc; struct pcb* td_pcb; } ;
struct rwindow {int dummy; } ;
struct pcb {int pcb_nsaved; int* pcb_rwsp; struct rwindow* pcb_rw; } ;
struct TYPE_2__ {int p_comm; } ;


 int CTR1 (int ,char*,int) ;
 int CTR3 (int ,char*,struct thread*,int ,int) ;
 int KASSERT (int,char*) ;
 int KTR_TRAP ;
 int MAXWIN ;
 int SIGILL ;
 scalar_t__ SPOFF ;
 int copyout (struct rwindow*,void*,int) ;
 int flushw () ;

int
rwindow_save(struct thread *td)
{
 struct rwindow *rw;
 struct pcb *pcb;
 u_long *ausp;
 u_long usp;
 int error;
 int i;

 pcb = td->td_pcb;
 CTR3(KTR_TRAP, "rwindow_save: td=%p (%s) nsaved=%d", td,
     td->td_proc->p_comm, pcb->pcb_nsaved);

 flushw();
 KASSERT(pcb->pcb_nsaved < MAXWIN,
     ("rwindow_save: pcb_nsaved > MAXWIN"));
 if ((i = pcb->pcb_nsaved) == 0)
  return (0);
 ausp = pcb->pcb_rwsp;
 rw = pcb->pcb_rw;
 error = 0;
 do {
  usp = *ausp;
  CTR1(KTR_TRAP, "rwindow_save: usp=%#lx", usp);
  usp += SPOFF;
  if ((error = (usp & 0x7)) != 0)
   break;
  error = copyout(rw, (void *)usp, sizeof *rw);
  if (error)
   break;
  ausp++;
  rw++;
 } while (--i > 0);
 CTR1(KTR_TRAP, "rwindow_save: error=%d", error);
 if (error == 0)
  pcb->pcb_nsaved = 0;
 return (error == 0 ? 0 : SIGILL);
}
