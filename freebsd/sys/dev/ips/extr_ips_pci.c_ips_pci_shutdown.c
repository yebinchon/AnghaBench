
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ configured; } ;
typedef TYPE_1__ ips_softc_t ;
typedef int device_t ;


 scalar_t__ device_get_softc (int ) ;
 int ips_flush_cache (TYPE_1__*) ;

__attribute__((used)) static int ips_pci_shutdown(device_t dev)
{
 ips_softc_t *sc = (ips_softc_t *) device_get_softc(dev);
 if (sc->configured) {
  ips_flush_cache(sc);
 }
 return 0;
}
