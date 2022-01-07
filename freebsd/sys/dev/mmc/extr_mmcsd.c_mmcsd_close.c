
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmcsd_softc {int dev; } ;
struct mmcsd_part {struct mmcsd_softc* sc; } ;
struct disk {int d_flags; scalar_t__ d_drv1; } ;


 int DISKFLAG_OPEN ;
 scalar_t__ MMC_ERR_NONE ;
 int device_printf (int ,char*) ;
 scalar_t__ mmcsd_flush_cache (struct mmcsd_softc*) ;

__attribute__((used)) static int
mmcsd_close(struct disk *dp)
{
 struct mmcsd_softc *sc;

 if ((dp->d_flags & DISKFLAG_OPEN) != 0) {
  sc = ((struct mmcsd_part *)dp->d_drv1)->sc;
  if (mmcsd_flush_cache(sc) != MMC_ERR_NONE)
   device_printf(sc->dev, "failed to flush cache\n");
 }
 return (0);
}
