
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int queue; scalar_t__ configured; } ;
typedef TYPE_1__ ips_softc_t ;
typedef int device_t ;


 int DEVICE_PRINTF (int,int ,char*) ;
 int EBUSY ;
 int ENXIO ;
 int bioq_flush (int *,int *,int ) ;
 scalar_t__ device_get_softc (int ) ;
 scalar_t__ ips_adapter_free (TYPE_1__*) ;
 int ips_flush_cache (TYPE_1__*) ;
 int ips_pci_free (TYPE_1__*) ;

__attribute__((used)) static int ips_pci_detach(device_t dev)
{
        ips_softc_t *sc;
        DEVICE_PRINTF(1, dev, "detaching ServeRaid\n");
        sc = (ips_softc_t *) device_get_softc(dev);
 if (sc->configured) {
  sc->configured = 0;
  ips_flush_cache(sc);
  if(ips_adapter_free(sc))
   return EBUSY;
  ips_pci_free(sc);
  bioq_flush(&sc->queue, ((void*)0), ENXIO);
 }
 return 0;
}
