
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int callout_reset (int *,int ,void (*) (void*),int *) ;
 int polltime ;
 int riscv_callout ;
 int riscv_cngetc (int *) ;
 int tp ;
 int tty_lock (int ) ;
 int tty_unlock (int ) ;
 int ttydisc_rint (int ,int,int ) ;
 int ttydisc_rint_done (int ) ;

__attribute__((used)) static void
riscv_timeout(void *v)
{
 int c;

 tty_lock(tp);
 while ((c = riscv_cngetc(((void*)0))) != -1)
  ttydisc_rint(tp, c, 0);
 ttydisc_rint_done(tp);
 tty_unlock(tp);

 callout_reset(&riscv_callout, polltime, riscv_timeout, ((void*)0));
}
