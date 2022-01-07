
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc_port {struct vtcon_softc* vcsp_sc; } ;
struct vtcon_softc {int vtcon_max_ports; struct vtcon_softc_port* vtcon_ports; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct vtcon_softc_port* malloc (int,int ,int) ;

__attribute__((used)) static int
vtcon_alloc_scports(struct vtcon_softc *sc)
{
 struct vtcon_softc_port *scport;
 int max, i;

 max = sc->vtcon_max_ports;

 sc->vtcon_ports = malloc(sizeof(struct vtcon_softc_port) * max,
     M_DEVBUF, M_NOWAIT | M_ZERO);
 if (sc->vtcon_ports == ((void*)0))
  return (ENOMEM);

 for (i = 0; i < max; i++) {
  scport = &sc->vtcon_ports[i];
  scport->vcsp_sc = sc;
 }

 return (0);
}
