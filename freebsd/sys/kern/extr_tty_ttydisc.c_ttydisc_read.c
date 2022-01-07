
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {scalar_t__ uio_resid; } ;
struct TYPE_2__ {scalar_t__* c_cc; } ;
struct tty {scalar_t__ t_inlow; int t_inq; TYPE_1__ t_termios; } ;


 scalar_t__ CMP_FLAG (int ,int ) ;
 int ICANON ;
 int MA_OWNED ;
 size_t VMIN ;
 size_t VTIME ;
 int l ;
 int tty_hiwat_in_unblock (struct tty*) ;
 int tty_lock_assert (struct tty*,int ) ;
 int ttydisc_read_canonical (struct tty*,struct uio*,int) ;
 int ttydisc_read_raw_interbyte_timer (struct tty*,struct uio*,int) ;
 int ttydisc_read_raw_no_timer (struct tty*,struct uio*,int) ;
 int ttydisc_read_raw_read_timer (struct tty*,struct uio*,int,scalar_t__) ;
 scalar_t__ ttyinq_bytescanonicalized (int *) ;
 scalar_t__ ttyinq_bytesleft (int *) ;

int
ttydisc_read(struct tty *tp, struct uio *uio, int ioflag)
{
 int error;

 tty_lock_assert(tp, MA_OWNED);

 if (uio->uio_resid == 0)
  return (0);

 if (CMP_FLAG(l, ICANON))
  error = ttydisc_read_canonical(tp, uio, ioflag);
 else if (tp->t_termios.c_cc[VTIME] == 0)
  error = ttydisc_read_raw_no_timer(tp, uio, ioflag);
 else if (tp->t_termios.c_cc[VMIN] == 0)
  error = ttydisc_read_raw_read_timer(tp, uio, ioflag,
      uio->uio_resid);
 else
  error = ttydisc_read_raw_interbyte_timer(tp, uio, ioflag);

 if (ttyinq_bytesleft(&tp->t_inq) >= tp->t_inlow ||
     ttyinq_bytescanonicalized(&tp->t_inq) == 0) {

  tty_hiwat_in_unblock(tp);
 }

 return (error);
}
