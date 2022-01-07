
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gxemul_disk_softc {int sc_size; int * sc_provider; int * sc_geom; int sc_dev; } ;
typedef int device_t ;


 int M_WAITOK ;
 struct gxemul_disk_softc* device_get_softc (int ) ;
 unsigned int device_get_unit (int ) ;
 int g_post_event (int ,struct gxemul_disk_softc*,int ,int *) ;
 int gxemul_disk_attach_geom ;
 int gxemul_disk_controller_mutex ;
 int gxemul_disk_size (unsigned int,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
gxemul_disk_attach(device_t dev)
{
 struct gxemul_disk_softc *sc;
 unsigned diskid;
 int error;

 diskid = device_get_unit(dev);

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_geom = ((void*)0);
 sc->sc_provider = ((void*)0);

 mtx_lock(&gxemul_disk_controller_mutex);
 error = gxemul_disk_size(diskid, &sc->sc_size);
 if (error != 0) {
  mtx_unlock(&gxemul_disk_controller_mutex);
  return (error);
 }
 mtx_unlock(&gxemul_disk_controller_mutex);

 g_post_event(gxemul_disk_attach_geom, sc, M_WAITOK, ((void*)0));

 return (0);
}
