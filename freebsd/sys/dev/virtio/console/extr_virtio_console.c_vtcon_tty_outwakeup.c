
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_port {int vtcport_flags; } ;
struct tty {int dummy; } ;
typedef int buf ;


 int VTCON_BULK_BUFSZ ;
 int VTCON_PORT_FLAG_GONE ;
 struct vtcon_port* tty_softc (struct tty*) ;
 int ttydisc_getc (struct tty*,char*,int) ;
 int vtcon_port_out (struct vtcon_port*,char*,int) ;

__attribute__((used)) static void
vtcon_tty_outwakeup(struct tty *tp)
{
 struct vtcon_port *port;
 char buf[VTCON_BULK_BUFSZ];
 int len;

 port = tty_softc(tp);

 if (port->vtcport_flags & VTCON_PORT_FLAG_GONE)
  return;

 while ((len = ttydisc_getc(tp, buf, sizeof(buf))) != 0)
  vtcon_port_out(port, buf, len);
}
