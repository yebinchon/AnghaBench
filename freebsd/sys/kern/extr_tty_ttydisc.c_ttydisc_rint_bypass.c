
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_flags; int t_inq; } ;


 int MA_OWNED ;
 int MPASS (int) ;
 int TF_BYPASS ;
 int atomic_add_long (int *,size_t) ;
 int rint_bypass ;
 int tty_hiwat_in_block (struct tty*) ;
 int tty_lock_assert (struct tty*,int ) ;
 int tty_nin ;
 scalar_t__ ttyhook_hashook (struct tty*,int ) ;
 size_t ttyhook_rint_bypass (struct tty*,void const*,size_t) ;
 int ttyinq_canonicalize (int *) ;
 size_t ttyinq_write (int *,void const*,size_t,int ) ;

size_t
ttydisc_rint_bypass(struct tty *tp, const void *buf, size_t len)
{
 size_t ret;

 tty_lock_assert(tp, MA_OWNED);

 MPASS(tp->t_flags & TF_BYPASS);

 atomic_add_long(&tty_nin, len);

 if (ttyhook_hashook(tp, rint_bypass))
  return ttyhook_rint_bypass(tp, buf, len);

 ret = ttyinq_write(&tp->t_inq, buf, len, 0);
 ttyinq_canonicalize(&tp->t_inq);
 if (ret < len)
  tty_hiwat_in_block(tp);

 return (ret);
}
