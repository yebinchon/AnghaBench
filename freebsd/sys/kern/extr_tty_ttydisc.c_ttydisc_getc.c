
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_flags; int t_outq; } ;


 int MA_OWNED ;
 int TF_STOPPED ;
 int atomic_add_long (int *,size_t) ;
 int getc_capture ;
 int getc_inject ;
 int tty_lock_assert (struct tty*,int ) ;
 int tty_nout ;
 int ttydisc_wakeup_watermark (struct tty*) ;
 int ttyhook_getc_capture (struct tty*,void*,size_t) ;
 size_t ttyhook_getc_inject (struct tty*,void*,size_t) ;
 scalar_t__ ttyhook_hashook (struct tty*,int ) ;
 size_t ttyoutq_read (int *,void*,size_t) ;

size_t
ttydisc_getc(struct tty *tp, void *buf, size_t len)
{

 tty_lock_assert(tp, MA_OWNED);

 if (tp->t_flags & TF_STOPPED)
  return (0);

 if (ttyhook_hashook(tp, getc_inject))
  return ttyhook_getc_inject(tp, buf, len);

 len = ttyoutq_read(&tp->t_outq, buf, len);

 if (ttyhook_hashook(tp, getc_capture))
  ttyhook_getc_capture(tp, buf, len);

 ttydisc_wakeup_watermark(tp);
 atomic_add_long(&tty_nout, len);

 return (len);
}
