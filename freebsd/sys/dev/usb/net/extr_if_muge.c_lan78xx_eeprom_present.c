
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct muge_softc {int dummy; } ;


 scalar_t__ ETH_E2P_INDICATOR ;
 int ETH_E2P_INDICATOR_OFFSET ;
 int lan78xx_eeprom_read_raw (struct muge_softc*,int ,scalar_t__*,int) ;

__attribute__((used)) static bool
lan78xx_eeprom_present(struct muge_softc *sc)
{
 int ret;
 uint8_t sig;

 ret = lan78xx_eeprom_read_raw(sc, ETH_E2P_INDICATOR_OFFSET, &sig, 1);
 return (ret == 0 && sig == ETH_E2P_INDICATOR);
}
