
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct winsize {int dummy; } ;
struct termios {int c_iflag; int c_lflag; int c_cflag; int * c_cc; int c_oflag; int c_ospeed; int c_ispeed; } ;
struct tty {int t_drainwait; int t_flags; struct winsize t_winsize; int t_bgwait; struct pgrp* t_pgrp; int t_sessioncnt; TYPE_2__* t_session; struct termios t_termios; int t_inq; int t_sigio; int t_outq; } ;
struct thread {struct proc* td_proc; } ;
struct proc {TYPE_2__* p_session; int p_flag; struct pgrp* p_pgrp; } ;
struct pgrp {int pg_id; TYPE_2__* pg_session; } ;
struct TYPE_4__ {int s_sid; struct tty* s_ttyp; TYPE_1__* s_ttyvp; } ;
struct TYPE_3__ {int v_type; } ;


 int CIGNORE ;
 int CTRL (char) ;
 int EACCES ;
 int EBUSY ;
 int ENOIOCTL ;
 int ENOTTY ;
 int EPERM ;






 int FREAD ;
 int FWRITE ;
 int ICANON ;
 int IXANY ;
 int IXOFF ;
 int IXON ;
 int MPASS (TYPE_2__*) ;
 int NO_PID ;
 int PGRP_UNLOCK (struct pgrp*) ;
 int PRIV_TTY_CONSOLE ;
 int PRIV_TTY_DRAINWAIT ;
 int PRIV_TTY_STI ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_CONTROLT ;
 int SER_DTR ;
 int SESS_LEADER (struct proc*) ;
 int TF_ASYNC ;
 int TF_EXCLUDE ;
 int TF_STOPPED ;
 int TIOCM_DTR ;
 int TIOCM_LE ;
 int TIOCM_RTS ;


 int TIOCPKT_DOSTOP ;
 int TIOCPKT_NOSTOP ;
 int TIOCPKT_START ;
 int TIOCPKT_STOP ;
 int TTYDISC ;
 int TTYSUP_CFLAG ;
 int TTYSUP_IFLAG ;
 int TTYSUP_LFLAG ;
 int TTYSUP_OFLAG ;
 int VBAD ;
 size_t VSTART ;
 size_t VSTOP ;
 struct tty* constty ;
 int constty_clear () ;
 int constty_set (struct tty*) ;
 int cv_broadcast (int *) ;
 int fgetown (int *) ;
 int fsetown (int,int *) ;
 int memcpy (int **,int *,int) ;
 struct pgrp* pgfind (int) ;
 int priv_check (struct thread*,int ) ;
 int proctree_lock ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int tty_drain (struct tty*,int ) ;
 int tty_flush (struct tty*,int) ;
 int tty_info (struct tty*) ;
 int tty_ioctl_compat (struct tty*,int,void*,int,struct thread*) ;
 int tty_is_ctty (struct tty*,struct proc*) ;
 int tty_lock (struct tty*) ;
 int tty_set_winsize (struct tty*,void*) ;
 int tty_unlock (struct tty*) ;
 int tty_wakeup (struct tty*,int) ;
 int tty_watermarks (struct tty*) ;
 int ttydevsw_modem (struct tty*,int,int) ;
 int ttydevsw_outwakeup (struct tty*) ;
 int ttydevsw_param (struct tty*,struct termios*) ;
 int ttydevsw_pktnotify (struct tty*,int ) ;
 int ttydisc_optimize (struct tty*) ;
 int ttydisc_rint (struct tty*,char,int ) ;
 int ttydisc_rint_done (struct tty*) ;
 int ttyinq_bytescanonicalized (int *) ;
 int ttyinq_canonicalize (int *) ;
 int ttyoutq_bytesused (int *) ;

__attribute__((used)) static int
tty_generic_ioctl(struct tty *tp, u_long cmd, void *data, int fflag,
    struct thread *td)
{
 int error;

 switch (cmd) {





 case 137:
  ttydevsw_modem(tp, SER_DTR, 0);
  return (0);
 case 156:
  ttydevsw_modem(tp, 0, SER_DTR);
  return (0);
 case 142: {
  int bits = *(int *)data;
  ttydevsw_modem(tp,
      (bits & (TIOCM_DTR | TIOCM_RTS)) >> 1,
      ((~bits) & (TIOCM_DTR | TIOCM_RTS)) >> 1);
  return (0);
 }
 case 144: {
  int bits = *(int *)data;
  ttydevsw_modem(tp, (bits & (TIOCM_DTR | TIOCM_RTS)) >> 1, 0);
  return (0);
 }
 case 145: {
  int bits = *(int *)data;
  ttydevsw_modem(tp, 0, (bits & (TIOCM_DTR | TIOCM_RTS)) >> 1);
  return (0);
 }
 case 143:
  *(int *)data = TIOCM_LE + (ttydevsw_modem(tp, 0, 0) << 1);
  return (0);

 case 162:
  if (*(int *)data)
   tp->t_flags |= TF_ASYNC;
  else
   tp->t_flags &= ~TF_ASYNC;
  return (0);
 case 160:

  return (0);
 case 159:
  *(int *)data = ttyinq_bytescanonicalized(&tp->t_inq);
  return (0);
 case 158:
 case 140:
  *(int *)data = ttyoutq_bytesused(&tp->t_outq);
  return (0);
 case 157:
  if (tp->t_session != ((void*)0) && !tty_is_ctty(tp, td->td_proc))

   return (ENOTTY);


  tty_unlock(tp);
  error = fsetown(*(int *)data, &tp->t_sigio);
  tty_lock(tp);
  return (error);
 case 161:
  if (tp->t_session != ((void*)0) && !tty_is_ctty(tp, td->td_proc))

   return (ENOTTY);


  *(int *)data = fgetown(&tp->t_sigio);
  return (0);
 case 150:

  *(struct termios*)data = tp->t_termios;
  return (0);
 case 136:
 case 134:
 case 135: {
  struct termios *t = data;






  if (t->c_ispeed == 0)
   t->c_ispeed = t->c_ospeed;


  t->c_iflag &= TTYSUP_IFLAG;
  t->c_oflag &= TTYSUP_OFLAG;
  t->c_lflag &= TTYSUP_LFLAG;
  t->c_cflag &= TTYSUP_CFLAG;


  if (cmd == 134 || cmd == 135) {
   error = tty_drain(tp, 0);
   if (error)
    return (error);
   if (cmd == 135)
    tty_flush(tp, FREAD);
  }




  if ((t->c_cflag & CIGNORE) == 0 &&
      (tp->t_termios.c_cflag != t->c_cflag ||
      ((tp->t_termios.c_iflag ^ t->c_iflag) &
      (IXON|IXOFF|IXANY)) ||
      tp->t_termios.c_ispeed != t->c_ispeed ||
      tp->t_termios.c_ospeed != t->c_ospeed)) {
   error = ttydevsw_param(tp, t);
   if (error)
    return (error);



   tp->t_termios.c_cflag = t->c_cflag & ~CIGNORE;
   tp->t_termios.c_ispeed = t->c_ispeed;
   tp->t_termios.c_ospeed = t->c_ospeed;


   error = tty_watermarks(tp);
   if (error)
    return (error);
  }


  tp->t_termios.c_iflag = t->c_iflag;
  tp->t_termios.c_oflag = t->c_oflag;
  tp->t_termios.c_lflag = t->c_lflag;
  memcpy(&tp->t_termios.c_cc, t->c_cc, sizeof t->c_cc);

  ttydisc_optimize(tp);

  if ((t->c_lflag & ICANON) == 0) {





   ttyinq_canonicalize(&tp->t_inq);
   tty_wakeup(tp, FREAD);
  }





  if (tp->t_termios.c_iflag & IXON &&
      tp->t_termios.c_cc[VSTOP] == CTRL('S') &&
      tp->t_termios.c_cc[VSTART] == CTRL('Q'))
   ttydevsw_pktnotify(tp, TIOCPKT_DOSTOP);
  else
   ttydevsw_pktnotify(tp, TIOCPKT_NOSTOP);
  return (0);
 }
 case 149:

  *(int *)data = TTYDISC;
  return (0);
 case 148:
  if (!tty_is_ctty(tp, td->td_proc))
   return (ENOTTY);

  if (tp->t_pgrp != ((void*)0))
   *(int *)data = tp->t_pgrp->pg_id;
  else
   *(int *)data = NO_PID;
  return (0);
 case 147:
  if (!tty_is_ctty(tp, td->td_proc))
   return (ENOTTY);

  MPASS(tp->t_session);
  *(int *)data = tp->t_session->s_sid;
  return (0);
 case 139: {
  struct proc *p = td->td_proc;


  tty_unlock(tp);
  sx_xlock(&proctree_lock);
  tty_lock(tp);

  if (!SESS_LEADER(p)) {

   sx_xunlock(&proctree_lock);
   return (EPERM);
  }

  if (tp->t_session != ((void*)0) && tp->t_session == p->p_session) {

   sx_xunlock(&proctree_lock);
   return (0);
  }

  if (p->p_session->s_ttyp != ((void*)0) ||
      (tp->t_session != ((void*)0) && tp->t_session->s_ttyvp != ((void*)0) &&
      tp->t_session->s_ttyvp->v_type != VBAD)) {
   sx_xunlock(&proctree_lock);
   return (EPERM);
  }


  tp->t_session = p->p_session;
  tp->t_session->s_ttyp = tp;
  tp->t_sessioncnt++;
  sx_xunlock(&proctree_lock);


  tp->t_pgrp = p->p_pgrp;
  PROC_LOCK(p);
  p->p_flag |= P_CONTROLT;
  PROC_UNLOCK(p);

  return (0);
 }
 case 133: {
  struct pgrp *pg;






  tty_unlock(tp);
  sx_slock(&proctree_lock);
  pg = pgfind(*(int *)data);
  if (pg != ((void*)0))
   PGRP_UNLOCK(pg);
  if (pg == ((void*)0) || pg->pg_session != td->td_proc->p_session) {
   sx_sunlock(&proctree_lock);
   tty_lock(tp);
   return (EPERM);
  }
  tty_lock(tp);





  if (!tty_is_ctty(tp, td->td_proc)) {
   sx_sunlock(&proctree_lock);
   return (ENOTTY);
  }
  tp->t_pgrp = pg;
  sx_sunlock(&proctree_lock);


  cv_broadcast(&tp->t_bgwait);
  return (0);
 }
 case 152: {
  int flags = *(int *)data;

  if (flags == 0)
   flags = (FREAD|FWRITE);
  else
   flags &= (FREAD|FWRITE);
  tty_flush(tp, flags);
  return (0);
 }
 case 154:

  return tty_drain(tp, 0);
 case 151:
  *(int *)data = tp->t_drainwait;
  return (0);
 case 138:
  error = priv_check(td, PRIV_TTY_DRAINWAIT);
  if (error == 0)
   tp->t_drainwait = *(int *)data;
  return (error);
 case 155:

  if (*(int *)data) {
   error = priv_check(td, PRIV_TTY_CONSOLE);
   if (error)
    return (error);






   if (constty == tp)
    return (0);
   if (constty != ((void*)0))
    return (EBUSY);

   tty_unlock(tp);
   constty_set(tp);
   tty_lock(tp);
  } else if (constty == tp) {
   constty_clear();
  }
  return (0);
 case 146:

  *(struct winsize*)data = tp->t_winsize;
  return (0);
 case 128:

  tty_set_winsize(tp, data);
  return (0);
 case 153:
  tp->t_flags |= TF_EXCLUDE;
  return (0);
 case 141:
  tp->t_flags &= ~TF_EXCLUDE;
  return (0);
 case 129:
  tp->t_flags |= TF_STOPPED;
  ttydevsw_pktnotify(tp, TIOCPKT_STOP);
  return (0);
 case 132:
  tp->t_flags &= ~TF_STOPPED;
  ttydevsw_outwakeup(tp);
  ttydevsw_pktnotify(tp, TIOCPKT_START);
  return (0);
 case 131:
  tty_info(tp);
  return (0);
 case 130:
  if ((fflag & FREAD) == 0 && priv_check(td, PRIV_TTY_STI))
   return (EPERM);
  if (!tty_is_ctty(tp, td->td_proc) &&
      priv_check(td, PRIV_TTY_STI))
   return (EACCES);
  ttydisc_rint(tp, *(char *)data, 0);
  ttydisc_rint_done(tp);
  return (0);
 }




 return (ENOIOCTL);

}
