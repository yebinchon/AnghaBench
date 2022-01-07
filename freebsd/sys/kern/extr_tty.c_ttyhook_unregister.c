
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_flags; int * t_hook; } ;


 int MA_OWNED ;
 int MPASS (int) ;
 int TF_HOOK ;
 int tty_lock_assert (struct tty*,int ) ;
 int tty_rel_free (struct tty*) ;
 int ttydisc_optimize (struct tty*) ;

void
ttyhook_unregister(struct tty *tp)
{

 tty_lock_assert(tp, MA_OWNED);
 MPASS(tp->t_flags & TF_HOOK);


 tp->t_flags &= ~TF_HOOK;
 tp->t_hook = ((void*)0);


 ttydisc_optimize(tp);


 tty_rel_free(tp);
}
