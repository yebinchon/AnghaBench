
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_flags; int t_inq; } ;


 int MA_OWNED ;
 int TF_HIWAT_IN ;
 int rint_poll ;
 int tty_lock_assert (struct tty*,int ) ;
 scalar_t__ ttyhook_hashook (struct tty*,int ) ;
 size_t ttyhook_rint_poll (struct tty*) ;
 size_t ttyinq_bytesleft (int *) ;

size_t
ttydisc_rint_poll(struct tty *tp)
{
 size_t l;

 tty_lock_assert(tp, MA_OWNED);

 if (ttyhook_hashook(tp, rint_poll))
  return ttyhook_rint_poll(tp);







 l = ttyinq_bytesleft(&tp->t_inq);
 if (l == 0 && (tp->t_flags & TF_HIWAT_IN) == 0)
  return (1);

 return (l);
}
