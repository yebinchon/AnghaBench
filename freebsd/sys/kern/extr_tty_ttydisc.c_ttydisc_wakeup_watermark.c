
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_flags; size_t t_outlow; int t_outq; } ;


 int FWRITE ;
 int TF_HIWAT_OUT ;
 int tty_wakeup (struct tty*,int ) ;
 size_t ttyoutq_bytesleft (int *) ;

__attribute__((used)) static void
ttydisc_wakeup_watermark(struct tty *tp)
{
 size_t c;

 c = ttyoutq_bytesleft(&tp->t_outq);
 if (tp->t_flags & TF_HIWAT_OUT) {

  if (c < tp->t_outlow)
   return;


  tp->t_flags &= ~TF_HIWAT_OUT;
 } else {

  if (c == 0)
   return;
 }
 tty_wakeup(tp, FWRITE);
}
