
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bge_softc {int bge_dev; } ;


 int BGE_EEADDR_DONE ;
 int BGE_EEADDR_RESET ;
 int BGE_EEHALFCLK (int ) ;
 int BGE_EE_ADDR ;
 int BGE_EE_DATA ;
 int BGE_EE_READCMD ;
 int BGE_HALFCLK_384SCL ;
 int BGE_MISC_LOCAL_CTL ;
 int BGE_MLC_AUTO_EEPROM ;
 int BGE_SETBIT (struct bge_softc*,int ,int ) ;
 int BGE_TIMEOUT ;
 int CSR_READ_4 (struct bge_softc*,int ) ;
 int CSR_WRITE_4 (struct bge_softc*,int ,int) ;
 int DELAY (int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static uint8_t
bge_eeprom_getbyte(struct bge_softc *sc, int addr, uint8_t *dest)
{
 int i;
 uint32_t byte = 0;





 BGE_SETBIT(sc, BGE_MISC_LOCAL_CTL, BGE_MLC_AUTO_EEPROM);


 CSR_WRITE_4(sc, BGE_EE_ADDR,
     BGE_EEADDR_RESET | BGE_EEHALFCLK(BGE_HALFCLK_384SCL));
 DELAY(20);


 CSR_WRITE_4(sc, BGE_EE_ADDR, BGE_EE_READCMD | addr);


 for(i = 0; i < BGE_TIMEOUT * 10; i++) {
  DELAY(10);
  if (CSR_READ_4(sc, BGE_EE_ADDR) & BGE_EEADDR_DONE)
   break;
 }

 if (i == BGE_TIMEOUT * 10) {
  device_printf(sc->bge_dev, "EEPROM read timed out\n");
  return (1);
 }


 byte = CSR_READ_4(sc, BGE_EE_DATA);

 *dest = (byte >> ((addr % 4) * 8)) & 0xFF;

 return (0);
}
