
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct sge_softc {int sge_dev; } ;


 int CSR_READ_4 (struct sge_softc*,int ) ;
 int CSR_WRITE_4 (struct sge_softc*,int ,int) ;
 int DELAY (int) ;
 int EI_DATA ;
 int EI_DATA_SHIFT ;
 int EI_OFFSET ;
 int EI_OFFSET_SHIFT ;
 int EI_OP_RD ;
 int EI_REQ ;
 int KASSERT (int,char*) ;
 int ROMInterface ;
 int SGE_TIMEOUT ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static uint16_t
sge_read_eeprom(struct sge_softc *sc, int offset)
{
 uint32_t val;
 int i;

 KASSERT(offset <= EI_OFFSET, ("EEPROM offset too big"));
 CSR_WRITE_4(sc, ROMInterface,
     EI_REQ | EI_OP_RD | (offset << EI_OFFSET_SHIFT));
 DELAY(500);
 for (i = 0; i < SGE_TIMEOUT; i++) {
  val = CSR_READ_4(sc, ROMInterface);
  if ((val & EI_REQ) == 0)
   break;
  DELAY(100);
 }
 if (i == SGE_TIMEOUT) {
  device_printf(sc->sge_dev,
      "EEPROM read timeout : 0x%08x\n", val);
  return (0xffff);
 }

 return ((val & EI_DATA) >> EI_DATA_SHIFT);
}
