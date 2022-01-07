
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {struct pcb* td_pcb; } ;
struct pcb {int pcb_initial_npxcw; scalar_t__ pcb_gs; } ;
struct image_params {int dummy; } ;


 int __LINUX_NPXCW__ ;
 int exec_setregs (struct thread*,struct image_params*,int ) ;
 int load_gs (int ) ;

__attribute__((used)) static void
linux_exec_setregs(struct thread *td, struct image_params *imgp, u_long stack)
{
 struct pcb *pcb = td->td_pcb;

 exec_setregs(td, imgp, stack);


 pcb->pcb_gs = 0;
 load_gs(0);

 pcb->pcb_initial_npxcw = __LINUX_NPXCW__;
}
