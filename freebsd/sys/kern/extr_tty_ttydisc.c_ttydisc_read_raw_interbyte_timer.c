
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {size_t uio_resid; } ;
struct TYPE_2__ {size_t* c_cc; } ;
struct tty {int t_flags; int t_inwait; int t_inq; TYPE_1__ t_termios; } ;
typedef size_t ssize_t ;


 int EWOULDBLOCK ;
 int IO_NDELAY ;
 int MPASS (int) ;
 int SIGTTIN ;
 int TF_ZOMBIE ;
 size_t VMIN ;
 size_t VTIME ;
 int curthread ;
 int tty_wait (struct tty*,int *) ;
 int tty_wait_background (struct tty*,int ,int ) ;
 int ttydisc_read_raw_read_timer (struct tty*,struct uio*,int,size_t) ;
 int ttyinq_read_uio (int *,struct tty*,struct uio*,size_t,int ) ;

__attribute__((used)) static int
ttydisc_read_raw_interbyte_timer(struct tty *tp, struct uio *uio, int ioflag)
{
 size_t vmin = tp->t_termios.c_cc[VMIN];
 ssize_t oresid = uio->uio_resid;
 int error;

 MPASS(tp->t_termios.c_cc[VMIN] != 0);
 MPASS(tp->t_termios.c_cc[VTIME] != 0);







 for (;;) {
  error = tty_wait_background(tp, curthread, SIGTTIN);
  if (error)
   return (error);

  error = ttyinq_read_uio(&tp->t_inq, tp, uio,
      uio->uio_resid, 0);
  if (error)
   return (error);
  if (uio->uio_resid == 0 || (oresid - uio->uio_resid) >= vmin)
   return (0);





  if (oresid != uio->uio_resid)
   break;


  if (tp->t_flags & TF_ZOMBIE)
   return (0);
  else if (ioflag & IO_NDELAY)
   return (EWOULDBLOCK);

  error = tty_wait(tp, &tp->t_inwait);
  if (error)
   return (error);
 }

 return ttydisc_read_raw_read_timer(tp, uio, ioflag, oresid);
}
