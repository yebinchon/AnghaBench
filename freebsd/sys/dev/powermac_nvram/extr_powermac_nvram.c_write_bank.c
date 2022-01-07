
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct powermac_nvram_softc {scalar_t__ sc_type; } ;
typedef int device_t ;


 scalar_t__ FLASH_TYPE_AMD ;
 struct powermac_nvram_softc* device_get_softc (int ) ;
 int write_bank_amd (int ,int *,int *) ;
 int write_bank_sm (int ,int *,int *) ;

__attribute__((used)) static int
write_bank(device_t dev, uint8_t *bank, uint8_t *data)
{
 struct powermac_nvram_softc *sc;

 sc = device_get_softc(dev);
 if (sc->sc_type == FLASH_TYPE_AMD)
  return (write_bank_amd(dev, bank, data));
 else
  return (write_bank_sm(dev, bank, data));
}
