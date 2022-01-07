
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct powermac_nvram_softc {scalar_t__ sc_type; } ;
typedef int device_t ;


 scalar_t__ FLASH_TYPE_AMD ;
 struct powermac_nvram_softc* device_get_softc (int ) ;
 int erase_bank_amd (int ,int *) ;
 int erase_bank_sm (int ,int *) ;

__attribute__((used)) static int
erase_bank(device_t dev, uint8_t *bank)
{
 struct powermac_nvram_softc *sc;

 sc = device_get_softc(dev);
 if (sc->sc_type == FLASH_TYPE_AMD)
  return (erase_bank_amd(dev, bank));
 else
  return (erase_bank_sm(dev, bank));
}
