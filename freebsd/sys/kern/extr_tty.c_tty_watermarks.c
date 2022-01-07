
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_cflag; int c_ispeed; int c_ospeed; } ;
struct tty {int t_inlow; int t_outlow; int t_outq; TYPE_1__ t_termios; int t_inq; } ;


 int CREAD ;
 size_t MIN (int,int ) ;
 int TTYBUF_MAX ;
 int ttyinq_getallocatedsize (int *) ;
 int ttyinq_setsize (int *,struct tty*,size_t) ;
 int ttyoutq_getallocatedsize (int *) ;
 int ttyoutq_setsize (int *,struct tty*,size_t) ;

__attribute__((used)) static int
tty_watermarks(struct tty *tp)
{
 size_t bs = 0;
 int error;


 if (tp->t_termios.c_cflag & CREAD)
  bs = MIN(tp->t_termios.c_ispeed / 5, TTYBUF_MAX);
 error = ttyinq_setsize(&tp->t_inq, tp, bs);
 if (error != 0)
  return (error);


 tp->t_inlow = (ttyinq_getallocatedsize(&tp->t_inq) * 9) / 10;


 bs = MIN(tp->t_termios.c_ospeed / 5, TTYBUF_MAX);
 error = ttyoutq_setsize(&tp->t_outq, tp, bs);
 if (error != 0)
  return (error);


 tp->t_outlow = (ttyoutq_getallocatedsize(&tp->t_outq) * 9) / 10;

 return (0);
}
