
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct ucred {int dummy; } ;
struct termios {int dummy; } ;
struct tty {TYPE_2__* t_session; TYPE_1__* t_pgrp; struct termios t_termios; } ;
struct thread {int dummy; } ;
struct pts_softc {int pts_flags; unsigned int pts_unit; } ;
struct fiodgname_arg {int len; } ;
struct file {int f_flag; struct tty* f_data; } ;
struct TYPE_4__ {int s_sid; } ;
struct TYPE_3__ {int pg_id; } ;


 int D_TTY ;
 int EINVAL ;
 int ENOIOCTL ;
 int ENOTTY ;





 int NO_PID ;
 int NSIG ;
 int PTS_FINISHED ;
 int PTS_PKT ;






 int TIOCSETA ;



 int copyout (char const*,int ,int) ;
 int fiodgname_buf_get_ptr (struct fiodgname_arg*,int ) ;
 int strlen (char const*) ;
 char* tty_devname (struct tty*) ;
 int tty_ioctl (struct tty*,int ,void*,int ,struct thread*) ;
 int tty_lock (struct tty*) ;
 int tty_signal_pgrp (struct tty*,int) ;
 struct pts_softc* tty_softc (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttydisc_getc_poll (struct tty*) ;

__attribute__((used)) static int
ptsdev_ioctl(struct file *fp, u_long cmd, void *data,
    struct ucred *active_cred, struct thread *td)
{
 struct tty *tp = fp->f_data;
 struct pts_softc *psc = tty_softc(tp);
 int error = 0, sig;

 switch (cmd) {
 case 139:
  *(int *)data = D_TTY;
  return (0);
 case 138:

  return (0);
 case 137:
  tty_lock(tp);
  if (psc->pts_flags & PTS_FINISHED) {

   *(int *)data = 1;
  } else {
   *(int *)data = ttydisc_getc_poll(tp);
  }
  tty_unlock(tp);
  return (0);
 case 141:



 {
  struct fiodgname_arg *fgn;
  const char *p;
  int i;


  fgn = data;
  p = tty_devname(tp);
  i = strlen(p) + 1;
  if (i > fgn->len)
   return (EINVAL);
  return (copyout(p, fiodgname_buf_get_ptr(fgn, cmd), i));
 }
 case 130:
 case 129:






  cmd = TIOCSETA;
  break;
 case 135:

  tty_lock(tp);
  if (tp->t_pgrp != ((void*)0))
   *(int *)data = tp->t_pgrp->pg_id;
  else
   *(int *)data = NO_PID;
  tty_unlock(tp);
  return (0);
 case 133:

  tty_lock(tp);
  if (tp->t_session == ((void*)0))
   error = ENOTTY;
  else
   *(int *)data = tp->t_session->s_sid;
  tty_unlock(tp);
  return (error);
 case 131:

  return (0);
 case 128:

  sig = *(int *)data;
  if (sig < 1 || sig >= NSIG)
   return (EINVAL);

  tty_lock(tp);
  tty_signal_pgrp(tp, sig);
  tty_unlock(tp);
  return (0);
 case 132:

  tty_lock(tp);
  if (*(int *)data)
   psc->pts_flags |= PTS_PKT;
  else
   psc->pts_flags &= ~PTS_PKT;
  tty_unlock(tp);
  return (0);
 }


 tty_lock(tp);
 error = tty_ioctl(tp, cmd, data, fp->f_flag, td);
 tty_unlock(tp);
 if (error == ENOIOCTL)
  error = ENOTTY;

 return (error);
}
