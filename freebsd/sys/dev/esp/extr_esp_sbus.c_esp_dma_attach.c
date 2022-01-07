
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int sc_freq; } ;
struct lsi64854_softc {struct ncr53c9x_softc* sc_client; } ;
struct esp_softc {int * sc_res; struct lsi64854_softc* sc_dma; int sc_dev; struct ncr53c9x_softc sc_ncr53c9x; } ;
typedef int device_t ;


 int ENXIO ;
 int OF_getprop (int ,char*,int *,int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int device_get_parent (int ) ;
 struct esp_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int esp_sbus_glue ;
 int espattach (struct esp_softc*,int *) ;
 int ofw_bus_get_node (int ) ;
 int printf (char*) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static int
esp_dma_attach(device_t dev)
{
 struct esp_softc *esc;
 struct ncr53c9x_softc *sc;
 int error, i;

 esc = device_get_softc(dev);
 sc = &esc->sc_ncr53c9x;

 esc->sc_dev = dev;
 if (OF_getprop(ofw_bus_get_node(dev), "clock-frequency",
     &sc->sc_freq, sizeof(sc->sc_freq)) == -1) {
  printf("failed to query OFW for clock-frequency\n");
  return (ENXIO);
 }


 esc->sc_dma = (struct lsi64854_softc *)
     device_get_softc(device_get_parent(dev));
 esc->sc_dma->sc_client = sc;




 i = 0;
 if ((esc->sc_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &i, RF_ACTIVE)) == ((void*)0)) {
  device_printf(dev, "cannot allocate SCSI core registers\n");
  return (ENXIO);
 }

 error = espattach(esc, &esp_sbus_glue);
 if (error != 0) {
  device_printf(dev, "espattach failed\n");
  goto fail_dma_eres;
 }

 return (0);

 fail_dma_eres:
 bus_release_resource(dev, SYS_RES_MEMORY, rman_get_rid(esc->sc_res),
     esc->sc_res);
 return (error);
}
