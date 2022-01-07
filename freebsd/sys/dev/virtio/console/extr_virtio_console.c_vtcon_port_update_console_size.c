
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vtcon_softc_port {struct vtcon_port* vcsp_port; } ;
struct vtcon_softc {struct vtcon_softc_port* vtcon_ports; } ;
struct vtcon_port {int dummy; } ;


 int VTCON_LOCK (struct vtcon_softc*) ;
 int VTCON_PORT_LOCK (struct vtcon_port*) ;
 int VTCON_PORT_UNLOCK (struct vtcon_port*) ;
 int VTCON_UNLOCK (struct vtcon_softc*) ;
 int vtcon_get_console_size (struct vtcon_softc*,int *,int *) ;
 int vtcon_port_change_size (struct vtcon_port*,int ,int ) ;

__attribute__((used)) static void
vtcon_port_update_console_size(struct vtcon_softc *sc)
{
 struct vtcon_port *port;
 struct vtcon_softc_port *scport;
 uint16_t cols, rows;

 vtcon_get_console_size(sc, &cols, &rows);





 scport = &sc->vtcon_ports[0];

 VTCON_LOCK(sc);
 port = scport->vcsp_port;

 if (port != ((void*)0)) {
  VTCON_PORT_LOCK(port);
  VTCON_UNLOCK(sc);
  vtcon_port_change_size(port, cols, rows);
  VTCON_PORT_UNLOCK(port);
 } else
  VTCON_UNLOCK(sc);
}
