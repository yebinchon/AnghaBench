
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ PNVRAMTYPE ;
typedef int PACB ;


 int EN_EEPROM ;
 int NVRAM_trm_get_data (int ,int) ;
 int TRMREG_GEN_CONTROL ;
 int trm_reg_read8 (int ) ;
 int trm_reg_write8 (int,int ) ;

__attribute__((used)) static void
NVRAM_trm_read_all(PNVRAMTYPE pEEpromBuf, PACB pACB)
{
 u_int8_t *bpEeprom = (u_int8_t*) pEEpromBuf;
 u_int8_t bAddr;




 trm_reg_write8((trm_reg_read8(TRMREG_GEN_CONTROL) | EN_EEPROM),
     TRMREG_GEN_CONTROL);
 for (bAddr = 0; bAddr < 128; bAddr++, bpEeprom++)
  *bpEeprom = NVRAM_trm_get_data(pACB, bAddr);



 trm_reg_write8((trm_reg_read8(TRMREG_GEN_CONTROL) & ~EN_EEPROM),
     TRMREG_GEN_CONTROL);
 return;
}
