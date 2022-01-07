
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_softc {int dev; } ;
struct mmc_ivars {int vccq_180; int vccq_120; } ;
typedef enum mmc_bus_timing { ____Placeholder_mmc_bus_timing } mmc_bus_timing ;


 int MMC_ERR_INVALID ;
 int MMC_ERR_NONE ;
 scalar_t__ isset (int *,int) ;
 int mmcbr_set_vccq (int ,int ) ;
 scalar_t__ mmcbr_switch_vccq (int ) ;
 int vccq_120 ;
 int vccq_180 ;
 int vccq_330 ;

__attribute__((used)) static int
mmc_set_vccq(struct mmc_softc *sc, struct mmc_ivars *ivar,
    enum mmc_bus_timing timing)
{

 if (isset(&ivar->vccq_120, timing))
  mmcbr_set_vccq(sc->dev, vccq_120);
 else if (isset(&ivar->vccq_180, timing))
  mmcbr_set_vccq(sc->dev, vccq_180);
 else
  mmcbr_set_vccq(sc->dev, vccq_330);
 if (mmcbr_switch_vccq(sc->dev) != 0)
  return (MMC_ERR_INVALID);
 else
  return (MMC_ERR_NONE);
}
