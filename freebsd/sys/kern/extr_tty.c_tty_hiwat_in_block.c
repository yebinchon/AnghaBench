
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_iflag; scalar_t__* c_cc; } ;
struct tty {int t_flags; TYPE_1__ t_termios; int t_outq; } ;


 int IXOFF ;
 int TF_HIWAT_IN ;
 size_t VSTOP ;
 scalar_t__ _POSIX_VDISABLE ;
 scalar_t__ ttyoutq_write_nofrag (int *,scalar_t__*,int) ;

void
tty_hiwat_in_block(struct tty *tp)
{

 if ((tp->t_flags & TF_HIWAT_IN) == 0 &&
     tp->t_termios.c_iflag & IXOFF &&
     tp->t_termios.c_cc[VSTOP] != _POSIX_VDISABLE) {




  if (ttyoutq_write_nofrag(&tp->t_outq,
      &tp->t_termios.c_cc[VSTOP], 1) == 0)
   tp->t_flags |= TF_HIWAT_IN;
 } else {

  tp->t_flags |= TF_HIWAT_IN;
 }
}
