
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int FREAD ;
 int MA_OWNED ;
 int rint_done ;
 int tty_lock_assert (struct tty*,int ) ;
 int tty_wakeup (struct tty*,int ) ;
 int ttydevsw_outwakeup (struct tty*) ;
 scalar_t__ ttyhook_hashook (struct tty*,int ) ;
 int ttyhook_rint_done (struct tty*) ;

void
ttydisc_rint_done(struct tty *tp)
{

 tty_lock_assert(tp, MA_OWNED);

 if (ttyhook_hashook(tp, rint_done))
  ttyhook_rint_done(tp);


 tty_wakeup(tp, FREAD);

 ttydevsw_outwakeup(tp);
}
