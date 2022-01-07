
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int GC_LOCK () ;
 int GC_UNLOCK () ;
 int callout_reset (int *,int ,void (*) (void*),struct tty*) ;
 int gxemul_cons_alt_break_state ;
 int gxemul_cons_callout ;
 int gxemul_cons_polltime ;
 int gxemul_cons_read () ;
 scalar_t__ gxemul_cons_readable () ;
 int kdb_alt_break (int,int *) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttydisc_rint (struct tty*,int,int ) ;
 int ttydisc_rint_done (struct tty*) ;

__attribute__((used)) static void
gxemul_cons_timeout(void *v)
{
 struct tty *tp;
 int c;

 tp = v;
 tty_lock(tp);
 GC_LOCK();
 while (gxemul_cons_readable()) {
  c = gxemul_cons_read();
  GC_UNLOCK();



  ttydisc_rint(tp, c, 0);
  GC_LOCK();
 }
 GC_UNLOCK();
 ttydisc_rint_done(tp);
 tty_unlock(tp);
 callout_reset(&gxemul_cons_callout, gxemul_cons_polltime,
     gxemul_cons_timeout, tp);
}
