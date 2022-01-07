
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_inq; } ;


 int ALTWERASE ;
 scalar_t__ CMP_FLAG (int ,int ) ;
 int CTL_ALNUM (char) ;
 scalar_t__ CTL_WHITE (char) ;
 int l ;
 int ttydisc_rubchar (struct tty*) ;
 scalar_t__ ttyinq_peekchar (int *,char*,int*) ;

__attribute__((used)) static void
ttydisc_rubword(struct tty *tp)
{
 char c;
 int quote, alnum;


 for (;;) {
  if (ttyinq_peekchar(&tp->t_inq, &c, &quote) != 0)
   return;
  if (!CTL_WHITE(c))
   break;
  ttydisc_rubchar(tp);
 }





 alnum = CTL_ALNUM(c);
 for (;;) {
  ttydisc_rubchar(tp);

  if (ttyinq_peekchar(&tp->t_inq, &c, &quote) != 0)
   return;
  if (CTL_WHITE(c))
   return;
  if (CMP_FLAG(l, ALTWERASE) && CTL_ALNUM(c) != alnum)
   return;
 }
}
