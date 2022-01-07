
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_flags; int t_dcdwait; int t_bgwait; } ;


 int FREAD ;
 int FWRITE ;
 int MPASS (int) ;
 int TF_GONE ;
 int cv_broadcast (int *) ;
 int tty_gone (struct tty*) ;
 int tty_rel_free (struct tty*) ;
 int tty_wakeup (struct tty*,int) ;
 int ttydisc_modem (struct tty*,int ) ;

void
tty_rel_gone(struct tty *tp)
{

 MPASS(!tty_gone(tp));


 ttydisc_modem(tp, 0);


 tty_wakeup(tp, FREAD|FWRITE);
 cv_broadcast(&tp->t_bgwait);
 cv_broadcast(&tp->t_dcdwait);

 tp->t_flags |= TF_GONE;
 tty_rel_free(tp);
}
