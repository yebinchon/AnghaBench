
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct dcons_softc {struct tty* tty; } ;


 int DCONS_NPORT ;
 int DCONS_POLL_IDLE ;
 int callout_reset (int *,int,void (*) (void*),struct tty*) ;
 int dcons_callout ;
 int dcons_os_checkc_nopoll (struct dcons_softc*) ;
 int hz ;
 int poll_hz ;
 int poll_idle ;
 struct dcons_softc* sc ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttydisc_rint (struct tty*,int,int ) ;
 int ttydisc_rint_done (struct tty*) ;

__attribute__((used)) static void
dcons_timeout(void *v)
{
 struct tty *tp;
 struct dcons_softc *dc;
 int i, c, polltime;

 for (i = 0; i < DCONS_NPORT; i ++) {
  dc = &sc[i];
  tp = dc->tty;

  tty_lock(tp);
  while ((c = dcons_os_checkc_nopoll(dc)) != -1) {
   ttydisc_rint(tp, c, 0);
   poll_idle = 0;
  }
  ttydisc_rint_done(tp);
  tty_unlock(tp);
 }
 poll_idle++;
 polltime = hz;
 if (poll_idle <= (poll_hz * DCONS_POLL_IDLE))
  polltime /= poll_hz;
 callout_reset(&dcons_callout, polltime, dcons_timeout, tp);
}
