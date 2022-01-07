
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc_port {struct virtqueue* vcsp_invq; struct vtcon_port* vcsp_port; } ;
struct vtcon_softc {int vtcon_max_ports; struct vtcon_softc_port* vtcon_ports; } ;
struct vtcon_port {int dummy; } ;
struct virtqueue {int dummy; } ;


 int M_DEVBUF ;
 int VTCON_LOCK (struct vtcon_softc*) ;
 int VTCON_PORT_LOCK (struct vtcon_port*) ;
 int VTCON_UNLOCK (struct vtcon_softc*) ;
 int free (struct vtcon_softc_port*,int ) ;
 int vtcon_port_drain_bufs (struct virtqueue*) ;
 int vtcon_port_teardown (struct vtcon_port*) ;

__attribute__((used)) static void
vtcon_destroy_ports(struct vtcon_softc *sc)
{
 struct vtcon_softc_port *scport;
 struct vtcon_port *port;
 struct virtqueue *vq;
 int i;

 if (sc->vtcon_ports == ((void*)0))
  return;

 VTCON_LOCK(sc);
 for (i = 0; i < sc->vtcon_max_ports; i++) {
  scport = &sc->vtcon_ports[i];

  port = scport->vcsp_port;
  if (port != ((void*)0)) {
   scport->vcsp_port = ((void*)0);
   VTCON_PORT_LOCK(port);
   VTCON_UNLOCK(sc);
   vtcon_port_teardown(port);
   VTCON_LOCK(sc);
  }

  vq = scport->vcsp_invq;
  if (vq != ((void*)0))
   vtcon_port_drain_bufs(vq);
 }
 VTCON_UNLOCK(sc);

 free(sc->vtcon_ports, M_DEVBUF);
 sc->vtcon_ports = ((void*)0);
}
