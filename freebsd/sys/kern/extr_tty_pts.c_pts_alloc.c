
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucred {int cr_ruidinfo; } ;
struct tty {int t_mtx; } ;
struct thread {struct ucred* td_ucred; struct proc* td_proc; } ;
struct TYPE_4__ {int si_note; } ;
struct TYPE_3__ {int si_note; } ;
struct pts_softc {int pts_unit; TYPE_2__ pts_outpoll; TYPE_1__ pts_inpoll; int pts_cred; int pts_outwait; int pts_inwait; } ;
struct proc {int dummy; } ;
struct file {int dummy; } ;


 int DTYPE_PTS ;
 int EAGAIN ;
 int M_PTS ;
 int M_WAITOK ;
 int M_ZERO ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int RACCT_NPTS ;
 int RLIMIT_NPTS ;
 int alloc_unr (int ) ;
 int chgptscnt (int ,int,int ) ;
 int crhold (struct ucred*) ;
 int cv_init (int *,char*) ;
 int finit (struct file*,int,int ,struct tty*,int *) ;
 int knlist_init_mtx (int *,int ) ;
 int lim_cur (struct thread*,int ) ;
 struct pts_softc* malloc (int,int ,int) ;
 int pts_class ;
 int pts_pool ;
 int ptsdev_ops ;
 int racct_add (struct proc*,int ,int) ;
 int racct_sub (struct proc*,int ,int) ;
 struct tty* tty_alloc (int *,struct pts_softc*) ;
 int tty_makedev (struct tty*,struct ucred*,char*,int) ;

int
pts_alloc(int fflags, struct thread *td, struct file *fp)
{
 int unit, ok, error;
 struct tty *tp;
 struct pts_softc *psc;
 struct proc *p = td->td_proc;
 struct ucred *cred = td->td_ucred;


 PROC_LOCK(p);
 error = racct_add(p, RACCT_NPTS, 1);
 if (error != 0) {
  PROC_UNLOCK(p);
  return (EAGAIN);
 }
 ok = chgptscnt(cred->cr_ruidinfo, 1, lim_cur(td, RLIMIT_NPTS));
 if (!ok) {
  racct_sub(p, RACCT_NPTS, 1);
  PROC_UNLOCK(p);
  return (EAGAIN);
 }
 PROC_UNLOCK(p);


 unit = alloc_unr(pts_pool);
 if (unit < 0) {
  racct_sub(p, RACCT_NPTS, 1);
  chgptscnt(cred->cr_ruidinfo, -1, 0);
  return (EAGAIN);
 }


 psc = malloc(sizeof(struct pts_softc), M_PTS, M_WAITOK|M_ZERO);
 cv_init(&psc->pts_inwait, "ptsin");
 cv_init(&psc->pts_outwait, "ptsout");

 psc->pts_unit = unit;
 psc->pts_cred = crhold(cred);

 tp = tty_alloc(&pts_class, psc);
 knlist_init_mtx(&psc->pts_inpoll.si_note, tp->t_mtx);
 knlist_init_mtx(&psc->pts_outpoll.si_note, tp->t_mtx);


 tty_makedev(tp, td->td_ucred, "pts/%u", psc->pts_unit);

 finit(fp, fflags, DTYPE_PTS, tp, &ptsdev_ops);

 return (0);
}
