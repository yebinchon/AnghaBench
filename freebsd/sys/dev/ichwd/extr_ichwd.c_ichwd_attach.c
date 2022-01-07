
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ichwd_softc {int * gc_res; int gc_rid; int * gcs_res; int gcs_rid; int ich; int * smi_res; int smi_rid; int * tco_res; int tco_rid; int smi_enabled; int ev_tag; int device; } ;
typedef int device_t ;


 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,struct ichwd_softc*,int ) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int TCO2_STS ;
 int TCO_SECOND_TO_STS ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct ichwd_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ ichwd_clear_noreboot (struct ichwd_softc*) ;
 int ichwd_event ;
 scalar_t__ ichwd_lpc_attach (int ) ;
 int ichwd_read_tco_2 (struct ichwd_softc*,int ) ;
 scalar_t__ ichwd_smb_attach (int ) ;
 int ichwd_smi_disable (struct ichwd_softc*) ;
 int ichwd_smi_is_enabled (struct ichwd_softc*) ;
 int ichwd_sts_reset (struct ichwd_softc*) ;
 int ichwd_tmr_disable (struct ichwd_softc*) ;
 int watchdog_list ;

__attribute__((used)) static int
ichwd_attach(device_t dev)
{
 struct ichwd_softc *sc;

 sc = device_get_softc(dev);
 sc->device = dev;

 if (ichwd_lpc_attach(dev) != 0 && ichwd_smb_attach(dev) != 0)
  goto fail;

 if (ichwd_clear_noreboot(sc) != 0)
  goto fail;






 if ((ichwd_read_tco_2(sc, TCO2_STS) & TCO_SECOND_TO_STS) != 0)
  device_printf(dev,
      "resuming after hardware watchdog timeout\n");


 ichwd_sts_reset(sc);


 ichwd_tmr_disable(sc);


 sc->ev_tag = EVENTHANDLER_REGISTER(watchdog_list, ichwd_event, sc, 0);


 sc->smi_enabled = ichwd_smi_is_enabled(sc);
 ichwd_smi_disable(sc);

 return (0);
 fail:
 sc = device_get_softc(dev);
 if (sc->tco_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IOPORT,
      sc->tco_rid, sc->tco_res);
 if (sc->smi_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IOPORT,
      sc->smi_rid, sc->smi_res);
 if (sc->gcs_res != ((void*)0))
  bus_release_resource(sc->ich, SYS_RES_MEMORY,
      sc->gcs_rid, sc->gcs_res);
 if (sc->gc_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->gc_rid, sc->gc_res);

 return (ENXIO);
}
