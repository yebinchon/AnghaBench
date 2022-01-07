
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_drainwait; int t_outq; int t_outwait; } ;
typedef scalar_t__ sbintime_t ;


 int EWOULDBLOCK ;
 int SBT_1S ;
 int getc_inject ;
 scalar_t__ getsbinuptime () ;
 int hz ;
 int tty_timedwait (struct tty*,int *,int) ;
 int ttydevsw_busy (struct tty*) ;
 int ttydevsw_outwakeup (struct tty*) ;
 scalar_t__ ttyhook_hashook (struct tty*,int ) ;
 size_t ttyoutq_bytesused (int *) ;

__attribute__((used)) static int
tty_drain(struct tty *tp, int leaving)
{
 sbintime_t timeout_at;
 size_t bytes;
 int error;

 if (ttyhook_hashook(tp, getc_inject))

  return (0);






 if (leaving)
  timeout_at = getsbinuptime() + SBT_1S;
 else if (tp->t_drainwait != 0)
  timeout_at = getsbinuptime() + SBT_1S * tp->t_drainwait;
 else
  timeout_at = 0;
 error = 0;
 bytes = ttyoutq_bytesused(&tp->t_outq);
 for (;;) {
  if (ttyoutq_bytesused(&tp->t_outq) == 0 && !ttydevsw_busy(tp))
   return (0);
  if (error != 0)
   return (error);
  ttydevsw_outwakeup(tp);
  error = tty_timedwait(tp, &tp->t_outwait, hz / 10);
  if (error != 0 && error != EWOULDBLOCK)
   return (error);
  else if (timeout_at == 0 || getsbinuptime() < timeout_at)
   error = 0;
  else if (leaving && ttyoutq_bytesused(&tp->t_outq) < bytes) {

   error = 0;
   timeout_at += SBT_1S;
   bytes = ttyoutq_bytesused(&tp->t_outq);
  }
 }
}
