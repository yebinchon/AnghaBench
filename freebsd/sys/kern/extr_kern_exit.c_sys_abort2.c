
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_ucred; struct proc* td_proc; } ;
struct sbuf {int dummy; } ;
struct proc {int p_pid; int p_comm; } ;
struct abort2_args {int nargs; int * why; int * args; } ;
struct TYPE_2__ {int cr_uid; } ;


 int LOG_INFO ;
 int SBUF_FIXEDLEN ;
 int SIGABRT ;
 int SIGKILL ;
 int copyin (int *,void**,int) ;
 int exit1 (struct thread*,int ,int) ;
 int log (int ,char*,int ) ;
 int sbuf_cat (struct sbuf*,char*) ;
 int sbuf_clear (struct sbuf*) ;
 int sbuf_copyin (struct sbuf*,int *,int) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new (int *,int *,int,int ) ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 int sbuf_trim (struct sbuf*) ;

int
sys_abort2(struct thread *td, struct abort2_args *uap)
{
 struct proc *p = td->td_proc;
 struct sbuf *sb;
 void *uargs[16];
 int error, i, sig;






 sb = sbuf_new(((void*)0), ((void*)0), 512, SBUF_FIXEDLEN);
 sbuf_clear(sb);
 sbuf_printf(sb, "%s(pid %d uid %d) aborted: ",
     p->p_comm, p->p_pid, td->td_ucred->cr_uid);




 sig = SIGKILL;

 if (uap->nargs < 0 || uap->nargs > 16)
  goto out;
 if (uap->nargs > 0) {
  if (uap->args == ((void*)0))
   goto out;
  error = copyin(uap->args, uargs, uap->nargs * sizeof(void *));
  if (error != 0)
   goto out;
 }




 if (uap->why != ((void*)0)) {
  error = sbuf_copyin(sb, uap->why, 128);
  if (error < 0)
   goto out;
 } else {
  sbuf_printf(sb, "(null)");
 }
 if (uap->nargs > 0) {
  sbuf_printf(sb, "(");
  for (i = 0;i < uap->nargs; i++)
   sbuf_printf(sb, "%s%p", i == 0 ? "" : ", ", uargs[i]);
  sbuf_printf(sb, ")");
 }





 sig = SIGABRT;
out:
 if (sig == SIGKILL) {
  sbuf_trim(sb);
  sbuf_printf(sb, " (Reason text inaccessible)");
 }
 sbuf_cat(sb, "\n");
 sbuf_finish(sb);
 log(LOG_INFO, "%s", sbuf_data(sb));
 sbuf_delete(sb);
 exit1(td, 0, sig);
 return (0);
}
