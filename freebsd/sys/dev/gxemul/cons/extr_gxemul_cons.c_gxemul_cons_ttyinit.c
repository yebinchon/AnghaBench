
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int callout_init (int *,int) ;
 int callout_reset (int *,int ,int ,struct tty*) ;
 int gxemul_cons_callout ;
 int gxemul_cons_polltime ;
 int gxemul_cons_timeout ;
 int gxemul_cons_ttydevsw ;
 struct tty* tty_alloc (int *,int *) ;
 int tty_init_console (struct tty*,int ) ;
 int tty_makedev (struct tty*,int *,char*,char*) ;

__attribute__((used)) static void
gxemul_cons_ttyinit(void *unused)
{
 struct tty *tp;

 tp = tty_alloc(&gxemul_cons_ttydevsw, ((void*)0));
 tty_init_console(tp, 0);
 tty_makedev(tp, ((void*)0), "%s", "ttyu0");
 callout_init(&gxemul_cons_callout, 1);
 callout_reset(&gxemul_cons_callout, gxemul_cons_polltime,
     gxemul_cons_timeout, tp);

}
