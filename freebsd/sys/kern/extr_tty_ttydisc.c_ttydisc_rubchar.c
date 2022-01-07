
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * c_cc; } ;
struct tty {int t_writepos; int t_column; TYPE_1__ t_termios; int t_outq; int t_inq; } ;


 scalar_t__ CMP_FLAG (int ,int ) ;
 char CTAB ;
 scalar_t__ CTL_PRINT (char,int) ;
 int ECHO ;
 int ECHOCTL ;
 int ECHOE ;
 size_t VERASE ;
 int l ;
 int ttydisc_echo (struct tty*,int ,int ) ;
 unsigned int ttydisc_recalc_linelength (struct tty*) ;
 int ttydisc_reprint (struct tty*) ;
 scalar_t__ ttyinq_peekchar (int *,char*,int*) ;
 int ttyinq_unputchar (int *) ;
 int ttyoutq_write_nofrag (int *,char*,int) ;

__attribute__((used)) static int
ttydisc_rubchar(struct tty *tp)
{
 char c;
 int quote;
 unsigned int prevpos, tablen;

 if (ttyinq_peekchar(&tp->t_inq, &c, &quote) != 0)
  return (-1);
 ttyinq_unputchar(&tp->t_inq);

 if (CMP_FLAG(l, ECHO)) {





  if (tp->t_writepos >= tp->t_column) {

   ttydisc_reprint(tp);
  } else if (CMP_FLAG(l, ECHOE)) {
   if (CTL_PRINT(c, quote)) {

    if (CMP_FLAG(l, ECHOCTL)) {
     tp->t_column -= 2;
     ttyoutq_write_nofrag(&tp->t_outq,
         "\b\b  \b\b", 6);
    }
   } else if (c == ' ') {

    tp->t_column -= 1;
    ttyoutq_write_nofrag(&tp->t_outq, "\b", 1);
   } else if (c == CTAB) {
    prevpos = ttydisc_recalc_linelength(tp);
    if (prevpos >= tp->t_column)
     tablen = 1;
    else
     tablen = tp->t_column - prevpos;
    if (tablen > 8)
     tablen = 8;

    tp->t_column = prevpos;
    ttyoutq_write_nofrag(&tp->t_outq,
        "\b\b\b\b\b\b\b\b", tablen);
    return (0);
   } else {




    tp->t_column -= 1;
    ttyoutq_write_nofrag(&tp->t_outq, "\b \b", 3);
   }
  } else {

   ttydisc_echo(tp, tp->t_termios.c_cc[VERASE], 0);
  }
 }

 return (0);
}
