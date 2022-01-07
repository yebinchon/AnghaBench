
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* c_cc; } ;
struct tty {int t_inq; TYPE_1__ t_termios; } ;
typedef scalar_t__ cc_t ;


 scalar_t__ CNL ;
 size_t VREPRINT ;
 scalar_t__ _POSIX_VDISABLE ;
 int ttydisc_echo (struct tty*,scalar_t__,int ) ;
 int ttydisc_reprint_char ;
 int ttyinq_line_iterate_from_linestart (int *,int ,struct tty*) ;
 int ttyinq_reprintpos_reset (int *) ;

__attribute__((used)) static void
ttydisc_reprint(struct tty *tp)
{
 cc_t c;


 c = tp->t_termios.c_cc[VREPRINT];
 if (c != _POSIX_VDISABLE)
  ttydisc_echo(tp, c, 0);
 ttydisc_echo(tp, CNL, 0);
 ttyinq_reprintpos_reset(&tp->t_inq);

 ttyinq_line_iterate_from_linestart(&tp->t_inq, ttydisc_reprint_char, tp);
}
