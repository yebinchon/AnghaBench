
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ PNVRAMTYPE ;
typedef int PACB ;


 int EN_EEPROM ;
 int NVRAM_trm_set_data (int ,int,int) ;
 int NVRAM_trm_wait_30us (int ) ;
 int NVRAM_trm_write_cmd (int ,int,int) ;
 int TRMREG_GEN_CONTROL ;
 int TRMREG_GEN_NVRAM ;
 int trm_reg_read8 (int ) ;
 int trm_reg_write8 (int,int ) ;

__attribute__((used)) static void
NVRAM_trm_write_all(PNVRAMTYPE pEEpromBuf,PACB pACB)
{
 u_int8_t *bpEeprom = (u_int8_t *) pEEpromBuf;
 u_int8_t bAddr;


 trm_reg_write8((trm_reg_read8(TRMREG_GEN_CONTROL) | EN_EEPROM),
     TRMREG_GEN_CONTROL);



 NVRAM_trm_write_cmd(pACB, 0x04, 0xFF);
 trm_reg_write8(0, TRMREG_GEN_NVRAM);
 NVRAM_trm_wait_30us(pACB);
 for (bAddr = 0; bAddr < 128; bAddr++, bpEeprom++) {
  NVRAM_trm_set_data(pACB, bAddr, *bpEeprom);
 }



 NVRAM_trm_write_cmd(pACB, 0x04, 0x00);
 trm_reg_write8(0 , TRMREG_GEN_NVRAM);
 NVRAM_trm_wait_30us(pACB);

 trm_reg_write8((trm_reg_read8(TRMREG_GEN_CONTROL) & ~EN_EEPROM),
     TRMREG_GEN_CONTROL);
 return;
}
