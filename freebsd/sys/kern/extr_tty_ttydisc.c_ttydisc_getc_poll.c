
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_flags; int t_outq; } ;


 int MA_OWNED ;
 int TF_STOPPED ;
 int getc_poll ;
 int tty_lock_assert (struct tty*,int ) ;
 size_t ttyhook_getc_poll (struct tty*) ;
 scalar_t__ ttyhook_hashook (struct tty*,int ) ;
 size_t ttyoutq_bytesused (int *) ;

size_t
ttydisc_getc_poll(struct tty *tp)
{

 tty_lock_assert(tp, MA_OWNED);

 if (tp->t_flags & TF_STOPPED)
  return (0);

 if (ttyhook_hashook(tp, getc_poll))
  return ttyhook_getc_poll(tp);

 return ttyoutq_bytesused(&tp->t_outq);
}
