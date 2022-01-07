
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {scalar_t__ uio_resid; } ;
struct tty {int t_flags; int t_outq; } ;
typedef scalar_t__ ssize_t ;


 int MA_OWNED ;
 int MIN (scalar_t__,int) ;
 int TF_STOPPED ;
 int TTY_STACKBUF ;
 int atomic_add_long (int *,scalar_t__) ;
 int getc_capture ;
 int getc_inject ;
 int tty_lock (struct tty*) ;
 int tty_lock_assert (struct tty*,int ) ;
 int tty_nout ;
 int tty_unlock (struct tty*) ;
 size_t ttydisc_getc (struct tty*,char*,int ) ;
 int ttydisc_wakeup_watermark (struct tty*) ;
 scalar_t__ ttyhook_hashook (struct tty*,int ) ;
 int ttyoutq_read_uio (int *,struct tty*,struct uio*) ;
 int uiomove (char*,size_t,struct uio*) ;

int
ttydisc_getc_uio(struct tty *tp, struct uio *uio)
{
 int error = 0;
 ssize_t obytes = uio->uio_resid;
 size_t len;
 char buf[TTY_STACKBUF];

 tty_lock_assert(tp, MA_OWNED);

 if (tp->t_flags & TF_STOPPED)
  return (0);






 if (ttyhook_hashook(tp, getc_capture) ||
     ttyhook_hashook(tp, getc_inject)) {
  while (uio->uio_resid > 0) {

   len = ttydisc_getc(tp, buf,
       MIN(uio->uio_resid, sizeof buf));
   if (len == 0)
    break;


   tty_unlock(tp);
   error = uiomove(buf, len, uio);
   tty_lock(tp);

   if (error != 0)
    break;
  }
 } else {
  error = ttyoutq_read_uio(&tp->t_outq, tp, uio);

  ttydisc_wakeup_watermark(tp);
  atomic_add_long(&tty_nout, obytes - uio->uio_resid);
 }

 return (error);
}
