
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmcsd_softc {int dummy; } ;
typedef int device_t ;


 scalar_t__ MMC_ERR_NONE ;
 struct mmcsd_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ mmcsd_flush_cache (struct mmcsd_softc*) ;

__attribute__((used)) static int
mmcsd_shutdown(device_t dev)
{
 struct mmcsd_softc *sc = device_get_softc(dev);

 if (mmcsd_flush_cache(sc) != MMC_ERR_NONE)
  device_printf(dev, "failed to flush cache\n");
 return (0);
}
