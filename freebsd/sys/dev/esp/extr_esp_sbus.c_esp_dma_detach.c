
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp_softc {int sc_res; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;
 struct esp_softc* device_get_softc (int ) ;
 int espdetach (struct esp_softc*) ;
 int rman_get_rid (int ) ;

__attribute__((used)) static int
esp_dma_detach(device_t dev)
{
 struct esp_softc *esc;
 int error;

 esc = device_get_softc(dev);

 error = espdetach(esc);
 if (error != 0)
  return (error);
 bus_release_resource(dev, SYS_RES_MEMORY, rman_get_rid(esc->sc_res),
     esc->sc_res);

 return (0);
}
