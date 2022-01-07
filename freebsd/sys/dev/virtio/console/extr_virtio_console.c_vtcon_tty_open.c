
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_port {int vtcport_flags; } ;
struct tty {int dummy; } ;


 int ENXIO ;
 int VIRTIO_CONSOLE_PORT_OPEN ;
 int VTCON_PORT_FLAG_GONE ;
 struct vtcon_port* tty_softc (struct tty*) ;
 int vtcon_port_submit_event (struct vtcon_port*,int ,int) ;

__attribute__((used)) static int
vtcon_tty_open(struct tty *tp)
{
 struct vtcon_port *port;

 port = tty_softc(tp);

 if (port->vtcport_flags & VTCON_PORT_FLAG_GONE)
  return (ENXIO);

 vtcon_port_submit_event(port, VIRTIO_CONSOLE_PORT_OPEN, 1);

 return (0);
}
