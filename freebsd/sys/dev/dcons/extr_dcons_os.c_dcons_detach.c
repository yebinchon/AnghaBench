
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct dcons_softc {struct tty* tty; } ;


 int atomic_add_int (int *,int) ;
 int dcons_close_refs ;
 struct dcons_softc* sc ;
 int tty_lock (struct tty*) ;
 int tty_rel_gone (struct tty*) ;

__attribute__((used)) static int
dcons_detach(int port)
{
 struct tty *tp;
 struct dcons_softc *dc;

 dc = &sc[port];
 tp = dc->tty;


 atomic_add_int(&dcons_close_refs, 1);
 tty_lock(tp);
 tty_rel_gone(tp);

 return(0);
}
