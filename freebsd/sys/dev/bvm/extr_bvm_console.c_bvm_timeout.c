
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int MA_OWNED ;
 int bvm_cngetc (int *) ;
 int bvm_timer ;
 int callout_reset (int *,int ,void (*) (void*),struct tty*) ;
 int polltime ;
 int tty_lock_assert (struct tty*,int ) ;
 int ttydisc_rint (struct tty*,int,int ) ;
 int ttydisc_rint_done (struct tty*) ;

__attribute__((used)) static void
bvm_timeout(void *v)
{
 struct tty *tp;
 int c;

 tp = (struct tty *)v;

 tty_lock_assert(tp, MA_OWNED);
 while ((c = bvm_cngetc(((void*)0))) != -1)
  ttydisc_rint(tp, c, 0);
 ttydisc_rint_done(tp);

 callout_reset(&bvm_timer, polltime, bvm_timeout, tp);
}
