
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int ue_dev; } ;
struct aue_softc {TYPE_1__ sc_ue; } ;


 int AUE_EECTL_DONE ;
 int AUE_EECTL_READ ;
 int AUE_EE_CTL ;
 int AUE_EE_DATA ;
 int AUE_EE_REG ;
 int AUE_TIMEOUT ;
 int aue_csr_read_1 (struct aue_softc*,int ) ;
 int aue_csr_read_2 (struct aue_softc*,int ) ;
 int aue_csr_write_1 (struct aue_softc*,int ,int) ;
 int device_printf (int ,char*) ;
 int hz ;
 scalar_t__ uether_pause (TYPE_1__*,int) ;

__attribute__((used)) static uint16_t
aue_eeprom_getword(struct aue_softc *sc, int addr)
{
 int i;

 aue_csr_write_1(sc, AUE_EE_REG, addr);
 aue_csr_write_1(sc, AUE_EE_CTL, AUE_EECTL_READ);

 for (i = 0; i != AUE_TIMEOUT; i++) {
  if (aue_csr_read_1(sc, AUE_EE_CTL) & AUE_EECTL_DONE)
   break;
  if (uether_pause(&sc->sc_ue, hz / 100))
   break;
 }

 if (i == AUE_TIMEOUT)
  device_printf(sc->sc_ue.ue_dev, "EEPROM read timed out\n");

 return (aue_csr_read_2(sc, AUE_EE_DATA));
}
