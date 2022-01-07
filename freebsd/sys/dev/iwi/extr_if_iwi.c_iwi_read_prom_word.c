
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct iwi_softc {int dummy; } ;


 int IWI_EEPROM_C ;
 int IWI_EEPROM_CTL (struct iwi_softc*,int) ;
 int IWI_EEPROM_D ;
 int IWI_EEPROM_Q ;
 int IWI_EEPROM_S ;
 int IWI_EEPROM_SHIFT_D ;
 int IWI_EEPROM_SHIFT_Q ;
 int IWI_MEM_EEPROM_CTL ;
 int MEM_READ_4 (struct iwi_softc*,int ) ;

__attribute__((used)) static uint16_t
iwi_read_prom_word(struct iwi_softc *sc, uint8_t addr)
{
 uint32_t tmp;
 uint16_t val;
 int n;


 IWI_EEPROM_CTL(sc, 0);
 IWI_EEPROM_CTL(sc, IWI_EEPROM_S);
 IWI_EEPROM_CTL(sc, IWI_EEPROM_S | IWI_EEPROM_C);
 IWI_EEPROM_CTL(sc, IWI_EEPROM_S);


 IWI_EEPROM_CTL(sc, IWI_EEPROM_S | IWI_EEPROM_D);
 IWI_EEPROM_CTL(sc, IWI_EEPROM_S | IWI_EEPROM_D | IWI_EEPROM_C);


 IWI_EEPROM_CTL(sc, IWI_EEPROM_S | IWI_EEPROM_D);
 IWI_EEPROM_CTL(sc, IWI_EEPROM_S | IWI_EEPROM_D | IWI_EEPROM_C);
 IWI_EEPROM_CTL(sc, IWI_EEPROM_S);
 IWI_EEPROM_CTL(sc, IWI_EEPROM_S | IWI_EEPROM_C);


 for (n = 7; n >= 0; n--) {
  IWI_EEPROM_CTL(sc, IWI_EEPROM_S |
      (((addr >> n) & 1) << IWI_EEPROM_SHIFT_D));
  IWI_EEPROM_CTL(sc, IWI_EEPROM_S |
      (((addr >> n) & 1) << IWI_EEPROM_SHIFT_D) | IWI_EEPROM_C);
 }

 IWI_EEPROM_CTL(sc, IWI_EEPROM_S);


 val = 0;
 for (n = 15; n >= 0; n--) {
  IWI_EEPROM_CTL(sc, IWI_EEPROM_S | IWI_EEPROM_C);
  IWI_EEPROM_CTL(sc, IWI_EEPROM_S);
  tmp = MEM_READ_4(sc, IWI_MEM_EEPROM_CTL);
  val |= ((tmp & IWI_EEPROM_Q) >> IWI_EEPROM_SHIFT_Q) << n;
 }

 IWI_EEPROM_CTL(sc, 0);


 IWI_EEPROM_CTL(sc, IWI_EEPROM_S);
 IWI_EEPROM_CTL(sc, 0);
 IWI_EEPROM_CTL(sc, IWI_EEPROM_C);

 return val;
}
