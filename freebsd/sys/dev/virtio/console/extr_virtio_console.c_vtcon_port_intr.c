
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc_port {struct vtcon_port* vcsp_port; struct vtcon_softc* vcsp_sc; } ;
struct vtcon_softc {int dummy; } ;
struct vtcon_port {int vtcport_flags; } ;


 int VTCON_LOCK (struct vtcon_softc*) ;
 int VTCON_PORT_FLAG_GONE ;
 int VTCON_PORT_LOCK (struct vtcon_port*) ;
 int VTCON_PORT_UNLOCK (struct vtcon_port*) ;
 int VTCON_UNLOCK (struct vtcon_softc*) ;
 int vtcon_port_in (struct vtcon_port*) ;

__attribute__((used)) static void
vtcon_port_intr(void *scportx)
{
 struct vtcon_softc_port *scport;
 struct vtcon_softc *sc;
 struct vtcon_port *port;

 scport = scportx;
 sc = scport->vcsp_sc;

 VTCON_LOCK(sc);
 port = scport->vcsp_port;
 if (port == ((void*)0)) {
  VTCON_UNLOCK(sc);
  return;
 }
 VTCON_PORT_LOCK(port);
 VTCON_UNLOCK(sc);
 if ((port->vtcport_flags & VTCON_PORT_FLAG_GONE) == 0)
  vtcon_port_in(port);
 VTCON_PORT_UNLOCK(port);
}
