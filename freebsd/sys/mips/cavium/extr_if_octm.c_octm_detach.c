
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octm_softc {int sc_intr; int sc_port; } ;
typedef int device_t ;
typedef int cvmx_mgmt_port_result_t ;






 int EIO ;
 int ENOBUFS ;
 int ENXIO ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int cvmx_mgmt_port_initialize (int ) ;
 struct octm_softc* device_get_softc (int ) ;

__attribute__((used)) static int
octm_detach(device_t dev)
{
 struct octm_softc *sc;
 cvmx_mgmt_port_result_t result;

 sc = device_get_softc(dev);

 result = cvmx_mgmt_port_initialize(sc->sc_port);
 switch (result) {
 case 128:
  break;
 case 129:
  return (ENOBUFS);
 case 130:
  return (ENXIO);
 case 131:
  return (EIO);
 }

 bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_intr);


 return (0);
}
