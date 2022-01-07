
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ichwd_softc {scalar_t__ smi_enabled; scalar_t__ gc_res; int gc_rid; scalar_t__ gcs_res; int gcs_rid; int ich; scalar_t__ smi_res; int smi_rid; scalar_t__ tco_res; int tco_rid; int * ev_tag; scalar_t__ active; } ;
typedef int device_t ;


 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 struct ichwd_softc* device_get_softc (int ) ;
 int ichwd_smi_enable (struct ichwd_softc*) ;
 int ichwd_sts_reset (struct ichwd_softc*) ;
 int ichwd_tmr_disable (struct ichwd_softc*) ;
 int watchdog_list ;

__attribute__((used)) static int
ichwd_detach(device_t dev)
{
 struct ichwd_softc *sc;

 sc = device_get_softc(dev);


 if (sc->active)
  ichwd_tmr_disable(sc);


 if (sc->smi_enabled != 0)
  ichwd_smi_enable(sc);


 if (sc->ev_tag != ((void*)0))
  EVENTHANDLER_DEREGISTER(watchdog_list, sc->ev_tag);
 sc->ev_tag = ((void*)0);


 ichwd_sts_reset(sc);


 bus_release_resource(dev, SYS_RES_IOPORT, sc->tco_rid, sc->tco_res);
 bus_release_resource(dev, SYS_RES_IOPORT, sc->smi_rid, sc->smi_res);


 if (sc->gcs_res)
  bus_release_resource(sc->ich, SYS_RES_MEMORY, sc->gcs_rid,
      sc->gcs_res);
 if (sc->gc_res)
  bus_release_resource(dev, SYS_RES_MEMORY, sc->gc_rid,
      sc->gc_res);

 return (0);
}
