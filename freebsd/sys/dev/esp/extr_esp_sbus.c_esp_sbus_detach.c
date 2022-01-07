
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lsi64854_softc {int sc_res; int sc_parent_dmat; } ;
struct esp_softc {int sc_res; struct lsi64854_softc* sc_dma; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int SYS_RES_MEMORY ;
 int bus_dma_tag_destroy (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 struct esp_softc* device_get_softc (int ) ;
 int espdetach (struct esp_softc*) ;
 int free (struct lsi64854_softc*,int ) ;
 int ofw_bus_get_name (int ) ;
 int rman_get_rid (int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
esp_sbus_detach(device_t dev)
{
 struct esp_softc *esc;
 struct lsi64854_softc *lsc;
 int error;

 esc = device_get_softc(dev);
 lsc = esc->sc_dma;

 error = espdetach(esc);
 if (error != 0)
  return (error);
 bus_release_resource(dev, SYS_RES_MEMORY, rman_get_rid(esc->sc_res),
  esc->sc_res);
 if (strcmp(ofw_bus_get_name(dev), "SUNW,fas") != 0)
  return (0);
 bus_dma_tag_destroy(lsc->sc_parent_dmat);
 bus_release_resource(dev, SYS_RES_MEMORY, rman_get_rid(lsc->sc_res),
     lsc->sc_res);
 free(lsc, M_DEVBUF);

 return (0);
}
