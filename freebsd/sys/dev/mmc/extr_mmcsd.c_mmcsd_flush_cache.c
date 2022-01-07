
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmcsd_softc {int flags; int rca; int mmcbus; int dev; } ;
typedef int device_t ;


 int EXT_CSD_CMD_SET_NORMAL ;
 int EXT_CSD_FLUSH_CACHE ;
 int EXT_CSD_FLUSH_CACHE_FLUSH ;
 int MMCBUS_ACQUIRE_BUS (int ,int ) ;
 int MMCBUS_RELEASE_BUS (int ,int ) ;
 int MMCSD_DIRTY ;
 int MMCSD_FLUSH_CACHE ;
 int MMC_ERR_NONE ;
 int mmc_switch (int ,int ,int ,int ,int ,int ,int,int) ;

__attribute__((used)) static int
mmcsd_flush_cache(struct mmcsd_softc *sc)
{
 device_t dev, mmcbus;
 int err;

 if ((sc->flags & MMCSD_FLUSH_CACHE) == 0)
  return (MMC_ERR_NONE);

 dev = sc->dev;
 mmcbus = sc->mmcbus;
 MMCBUS_ACQUIRE_BUS(mmcbus, dev);
 if ((sc->flags & MMCSD_DIRTY) == 0) {
  MMCBUS_RELEASE_BUS(mmcbus, dev);
  return (MMC_ERR_NONE);
 }
 err = mmc_switch(mmcbus, dev, sc->rca, EXT_CSD_CMD_SET_NORMAL,
     EXT_CSD_FLUSH_CACHE, EXT_CSD_FLUSH_CACHE_FLUSH, 60 * 1000, 1);
 if (err == MMC_ERR_NONE)
  sc->flags &= ~MMCSD_DIRTY;
 MMCBUS_RELEASE_BUS(mmcbus, dev);
 return (err);
}
