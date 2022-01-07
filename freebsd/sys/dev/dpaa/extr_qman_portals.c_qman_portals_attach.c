
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa_portals_softc {int sc_dp_size; int sc_dp_pa; } ;
typedef int device_t ;


 int ENXIO ;
 int OCP85XX_TGTIF_QMAN ;
 int XX_PortalSetInfo (int ) ;
 int bus_generic_attach (int ) ;
 struct dpaa_portals_softc* device_get_softc (int ) ;
 scalar_t__ law_enable (int ,int ,int ) ;
 int qman_portals_detach (int ) ;
 struct dpaa_portals_softc* qp_sc ;

int
qman_portals_attach(device_t dev)
{
 struct dpaa_portals_softc *sc;

 sc = qp_sc = device_get_softc(dev);


 if (law_enable(OCP85XX_TGTIF_QMAN, sc->sc_dp_pa, sc->sc_dp_size)) {
  qman_portals_detach(dev);
  return (ENXIO);
 }

 XX_PortalSetInfo(dev);

 return (bus_generic_attach(dev));
}
