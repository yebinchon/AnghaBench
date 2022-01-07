
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct dcons_softc {int flags; struct tty* tty; } ;


 int dcons_ttydevsw ;
 struct dcons_softc* sc ;
 struct tty* tty_alloc (int *,struct dcons_softc*) ;
 int tty_init_console (struct tty*,int ) ;
 int tty_makedev (struct tty*,int *,char*,char*) ;

__attribute__((used)) static int
dcons_attach_port(int port, char *name, int flags)
{
 struct dcons_softc *dc;
 struct tty *tp;

 dc = &sc[port];
 tp = tty_alloc(&dcons_ttydevsw, dc);
 dc->flags = flags;
 dc->tty = tp;
 tty_init_console(tp, 0);
 tty_makedev(tp, ((void*)0), "%s", name);
 return(0);
}
