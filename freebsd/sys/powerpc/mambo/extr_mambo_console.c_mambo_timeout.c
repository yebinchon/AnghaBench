
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int callout_reset (int *,int ,void (*) (void*),int *) ;
 int mambo_callout ;
 int mambo_cngetc (int *) ;
 int polltime ;
 int tp ;
 int tty_lock (int ) ;
 int tty_unlock (int ) ;
 int ttydisc_rint (int ,int,int ) ;
 int ttydisc_rint_done (int ) ;

__attribute__((used)) static void
mambo_timeout(void *v)
{
 int c;

 tty_lock(tp);
 while ((c = mambo_cngetc(((void*)0))) != -1)
  ttydisc_rint(tp, c, 0);
 ttydisc_rint_done(tp);
 tty_unlock(tp);

 callout_reset(&mambo_callout, polltime, mambo_timeout, ((void*)0));
}
