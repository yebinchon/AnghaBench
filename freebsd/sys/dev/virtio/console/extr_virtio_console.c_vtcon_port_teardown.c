
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_port {int vtcport_flags; struct tty* vtcport_tty; } ;
struct tty {int dummy; } ;


 int VTCON_PORT_FLAG_GONE ;
 int atomic_add_int (int *,int) ;
 int tty_rel_gone (struct tty*) ;
 int vtcon_pending_free ;
 int vtcon_port_destroy (struct vtcon_port*) ;

__attribute__((used)) static void
vtcon_port_teardown(struct vtcon_port *port)
{
 struct tty *tp;

 tp = port->vtcport_tty;

 port->vtcport_flags |= VTCON_PORT_FLAG_GONE;

 if (tp != ((void*)0)) {
  atomic_add_int(&vtcon_pending_free, 1);
  tty_rel_gone(tp);
 } else
  vtcon_port_destroy(port);
}
