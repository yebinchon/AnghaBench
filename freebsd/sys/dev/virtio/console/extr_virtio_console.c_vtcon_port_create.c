
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc_port {struct vtcon_port* vcsp_port; } ;
struct vtcon_softc {struct vtcon_softc_port* vtcon_ports; int vtcon_dev; } ;
struct vtcon_port {int vtcport_id; int vtcport_tty; int vtcport_mtx; struct vtcon_softc_port* vtcport_scport; struct vtcon_softc* vtcport_sc; } ;
typedef int device_t ;


 int ENOMEM ;
 int MPASS (int ) ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int VIRTIO_CONSOLE_PORT_READY ;
 int VTCON_ASSERT_VALID_PORTID (struct vtcon_softc*,int) ;
 int VTCON_LOCK (struct vtcon_softc*) ;
 int VTCON_PORT_LOCK (struct vtcon_port*) ;
 int VTCON_PORT_UNLOCK (struct vtcon_port*) ;
 int VTCON_TTY_PREFIX ;
 int VTCON_UNLOCK (struct vtcon_softc*) ;
 int device_get_unit (int ) ;
 struct vtcon_port* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int tty_alloc_mutex (int *,struct vtcon_port*,int *) ;
 int tty_makedev (int ,int *,char*,int ,int ,int) ;
 int vtcon_port_enable_intr (struct vtcon_port*) ;
 int vtcon_port_init_vqs (struct vtcon_port*) ;
 int vtcon_port_submit_event (struct vtcon_port*,int ,int) ;
 int vtcon_port_teardown (struct vtcon_port*) ;
 int vtcon_tty_class ;

__attribute__((used)) static int
vtcon_port_create(struct vtcon_softc *sc, int id)
{
 device_t dev;
 struct vtcon_softc_port *scport;
 struct vtcon_port *port;
 int error;

 dev = sc->vtcon_dev;
 scport = &sc->vtcon_ports[id];

 VTCON_ASSERT_VALID_PORTID(sc, id);
 MPASS(scport->vcsp_port == ((void*)0));

 port = malloc(sizeof(struct vtcon_port), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (port == ((void*)0))
  return (ENOMEM);

 port->vtcport_sc = sc;
 port->vtcport_scport = scport;
 port->vtcport_id = id;
 mtx_init(&port->vtcport_mtx, "vtcpmtx", ((void*)0), MTX_DEF);
 port->vtcport_tty = tty_alloc_mutex(&vtcon_tty_class, port,
     &port->vtcport_mtx);

 error = vtcon_port_init_vqs(port);
 if (error) {
  VTCON_PORT_LOCK(port);
  vtcon_port_teardown(port);
  return (error);
 }

 VTCON_LOCK(sc);
 VTCON_PORT_LOCK(port);
 scport->vcsp_port = port;
 vtcon_port_enable_intr(port);
 vtcon_port_submit_event(port, VIRTIO_CONSOLE_PORT_READY, 1);
 VTCON_PORT_UNLOCK(port);
 VTCON_UNLOCK(sc);

 tty_makedev(port->vtcport_tty, ((void*)0), "%s%r.%r", VTCON_TTY_PREFIX,
     device_get_unit(dev), id);

 return (0);
}
