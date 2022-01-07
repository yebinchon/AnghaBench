
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdhci_xenon_softc {int dev; int * reg_vqmmc; } ;
struct TYPE_3__ {int vccq; } ;
struct TYPE_4__ {TYPE_1__ ios; } ;
struct sdhci_slot {TYPE_2__ host; } ;
typedef int device_t ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct sdhci_slot* device_get_ivars (int ) ;
 struct sdhci_xenon_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int) ;
 int regulator_set_voltage (int *,int,int) ;



__attribute__((used)) static int
sdhci_xenon_switch_vccq(device_t brdev, device_t reqdev)
{
 struct sdhci_xenon_softc *sc;
 struct sdhci_slot *slot;
 int uvolt, err;

 sc = device_get_softc(brdev);

        if (sc->reg_vqmmc == ((void*)0))
  return EOPNOTSUPP;

 slot = device_get_ivars(reqdev);
 switch (slot->host.ios.vccq) {
 case 129:
  uvolt = 1800000;
  break;
 case 128:
  uvolt = 3300000;
  break;
 default:
  return EINVAL;
 }

 err = regulator_set_voltage(sc->reg_vqmmc, uvolt, uvolt);
 if (err != 0) {
  device_printf(sc->dev,
      "Cannot set vqmmc to %d<->%d\n",
      uvolt,
      uvolt);
  return (err);
 }

 return (0);
}
