
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_outq; scalar_t__ t_column; } ;


 scalar_t__ CMP_CC (int ,char) ;
 scalar_t__ CMP_FLAG (int ,int ) ;
 scalar_t__ CTL_ECHO (char,int) ;
 scalar_t__ CTL_PRINT (char,int) ;
 int ECHOCTL ;
 int OPOST ;
 int VEOF ;
 int l ;
 int o ;
 int ttydisc_write_oproc (struct tty*,char) ;
 int ttyoutq_write_nofrag (int *,char*,int) ;

__attribute__((used)) static int
ttydisc_echo_force(struct tty *tp, char c, int quote)
{

 if (CMP_FLAG(o, OPOST) && CTL_ECHO(c, quote)) {




  return ttydisc_write_oproc(tp, c);
 } else if (CMP_FLAG(l, ECHOCTL) && CTL_PRINT(c, quote)) {






  char ob[4] = "^?\b\b";


  if (c != 0x7f)
   ob[1] = c + 'A' - 1;

  if (!quote && CMP_CC(VEOF, c)) {
   return ttyoutq_write_nofrag(&tp->t_outq, ob, 4);
  } else {
   tp->t_column += 2;
   return ttyoutq_write_nofrag(&tp->t_outq, ob, 2);
  }
 } else {

  tp->t_column++;
  return ttyoutq_write_nofrag(&tp->t_outq, &c, 1);
 }
}
