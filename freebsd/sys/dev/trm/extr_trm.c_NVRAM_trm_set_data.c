
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int PACB ;


 int NVRAM_trm_wait_30us (int ) ;
 int NVRAM_trm_write_cmd (int ,int,int) ;
 int NVR_BITIN ;
 int NVR_BITOUT ;
 int NVR_CLOCK ;
 int NVR_SELECT ;
 int TRMREG_GEN_NVRAM ;
 int trm_reg_read8 (int ) ;
 int trm_reg_write8 (int,int ) ;

__attribute__((used)) static void
NVRAM_trm_set_data(PACB pACB, u_int8_t bAddr, u_int8_t bData)
{
 int i;
 u_int8_t bSendData;




 NVRAM_trm_write_cmd(pACB, 0x05, bAddr);



 for (i = 0; i < 8; i++, bData <<= 1) {
  bSendData = NVR_SELECT;
  if (bData & 0x80)

   bSendData |= NVR_BITOUT;
  trm_reg_write8(bSendData , TRMREG_GEN_NVRAM);
  NVRAM_trm_wait_30us(pACB);
  trm_reg_write8((bSendData | NVR_CLOCK), TRMREG_GEN_NVRAM);
  NVRAM_trm_wait_30us(pACB);
 }
 trm_reg_write8(NVR_SELECT , TRMREG_GEN_NVRAM);
 NVRAM_trm_wait_30us(pACB);



 trm_reg_write8(0 , TRMREG_GEN_NVRAM);
 NVRAM_trm_wait_30us(pACB);
 trm_reg_write8(NVR_SELECT ,TRMREG_GEN_NVRAM);
 NVRAM_trm_wait_30us(pACB);



 while (1) {
  trm_reg_write8((NVR_SELECT | NVR_CLOCK), TRMREG_GEN_NVRAM);
  NVRAM_trm_wait_30us(pACB);
  trm_reg_write8(NVR_SELECT, TRMREG_GEN_NVRAM);
  NVRAM_trm_wait_30us(pACB);
  if (trm_reg_read8(TRMREG_GEN_NVRAM) & NVR_BITIN) {
   break;
  }
 }



 trm_reg_write8(0, TRMREG_GEN_NVRAM);
 return;
}
