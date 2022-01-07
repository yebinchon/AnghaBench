
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_long ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_10__ {int sb_state; int sb_mbcnt; int sb_mbmax; int sb_hiwat; int sb_flags; } ;
struct socket {TYPE_2__* so_proto; int so_vnet; int so_fibnum; TYPE_3__ so_rcv; int so_sigio; TYPE_3__ so_snd; int sol_sbsnd_flags; int sol_sbrcv_flags; int so_state; } ;
struct file {struct socket* f_data; } ;
struct TYPE_9__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_8__ {int (* pru_control ) (struct socket*,int,void*,int ,struct thread*) ;} ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;







 char IOCGROUP (int) ;
 int SBS_RCVATMARK ;
 int SB_ASYNC ;



 int SOCKBUF_LOCK (TYPE_3__*) ;
 int SOCKBUF_UNLOCK (TYPE_3__*) ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int SOLISTENING (struct socket*) ;
 int SS_ASYNC ;
 int SS_NBIO ;
 int fgetown (int *) ;
 int fsetown (int,int *) ;
 int ifioctl (struct socket*,int,void*,struct thread*) ;
 int rtioctl_fib (int,void*,int ) ;
 int sbavail (TYPE_3__*) ;
 int sbspace (TYPE_3__*) ;
 int sbused (TYPE_3__*) ;
 int stub1 (struct socket*,int,void*,int ,struct thread*) ;

__attribute__((used)) static int
soo_ioctl(struct file *fp, u_long cmd, void *data, struct ucred *active_cred,
    struct thread *td)
{
 struct socket *so = fp->f_data;
 int error = 0;

 switch (cmd) {
 case 135:
  SOCK_LOCK(so);
  if (*(int *)data)
   so->so_state |= SS_NBIO;
  else
   so->so_state &= ~SS_NBIO;
  SOCK_UNLOCK(so);
  break;

 case 137:
  if (*(int *)data) {
   SOCK_LOCK(so);
   so->so_state |= SS_ASYNC;
   if (SOLISTENING(so)) {
    so->sol_sbrcv_flags |= SB_ASYNC;
    so->sol_sbsnd_flags |= SB_ASYNC;
   } else {
    SOCKBUF_LOCK(&so->so_rcv);
    so->so_rcv.sb_flags |= SB_ASYNC;
    SOCKBUF_UNLOCK(&so->so_rcv);
    SOCKBUF_LOCK(&so->so_snd);
    so->so_snd.sb_flags |= SB_ASYNC;
    SOCKBUF_UNLOCK(&so->so_snd);
   }
   SOCK_UNLOCK(so);
  } else {
   SOCK_LOCK(so);
   so->so_state &= ~SS_ASYNC;
   if (SOLISTENING(so)) {
    so->sol_sbrcv_flags &= ~SB_ASYNC;
    so->sol_sbsnd_flags &= ~SB_ASYNC;
   } else {
    SOCKBUF_LOCK(&so->so_rcv);
    so->so_rcv.sb_flags &= ~SB_ASYNC;
    SOCKBUF_UNLOCK(&so->so_rcv);
    SOCKBUF_LOCK(&so->so_snd);
    so->so_snd.sb_flags &= ~SB_ASYNC;
    SOCKBUF_UNLOCK(&so->so_snd);
   }
   SOCK_UNLOCK(so);
  }
  break;

 case 134:

  *(int *)data = sbavail(&so->so_rcv);
  break;

 case 132:

  *(int *)data = sbavail(&so->so_snd);
  break;

 case 133:

  if ((so->so_snd.sb_hiwat < sbused(&so->so_snd)) ||
      (so->so_snd.sb_mbmax < so->so_snd.sb_mbcnt))
   *(int *)data = 0;
  else
   *(int *)data = sbspace(&so->so_snd);
  break;

 case 131:
  error = fsetown(*(int *)data, &so->so_sigio);
  break;

 case 136:
  *(int *)data = fgetown(&so->so_sigio);
  break;

 case 128:
  error = fsetown(-(*(int *)data), &so->so_sigio);
  break;

 case 129:
  *(int *)data = -fgetown(&so->so_sigio);
  break;

 case 130:

  *(int *)data = (so->so_rcv.sb_state & SBS_RCVATMARK) != 0;
  break;
 default:





  if (IOCGROUP(cmd) == 'i')
   error = ifioctl(so, cmd, data, td);
  else if (IOCGROUP(cmd) == 'r') {
   CURVNET_SET(so->so_vnet);
   error = rtioctl_fib(cmd, data, so->so_fibnum);
   CURVNET_RESTORE();
  } else {
   CURVNET_SET(so->so_vnet);
   error = ((*so->so_proto->pr_usrreqs->pru_control)
       (so, cmd, data, 0, td));
   CURVNET_RESTORE();
  }
  break;
 }
 return (error);
}
