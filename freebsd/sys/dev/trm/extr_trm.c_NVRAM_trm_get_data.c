
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int PACB ;


 int NVRAM_trm_wait_30us (int ) ;
 int NVRAM_trm_write_cmd (int ,int,int) ;
 int NVR_BITIN ;
 int NVR_CLOCK ;
 int NVR_SELECT ;
 int TRMREG_GEN_NVRAM ;
 int trm_reg_read8 (int ) ;
 int trm_reg_write8 (int,int ) ;

__attribute__((used)) static u_int8_t
NVRAM_trm_get_data(PACB pACB, u_int8_t bAddr)
{
 int i;
 u_int8_t bReadData, bData = 0;




 NVRAM_trm_write_cmd(pACB, 0x06, bAddr);

 for (i = 0; i < 8; i++) {



  trm_reg_write8((NVR_SELECT | NVR_CLOCK) , TRMREG_GEN_NVRAM);
  NVRAM_trm_wait_30us(pACB);
  trm_reg_write8(NVR_SELECT , TRMREG_GEN_NVRAM);



  bReadData = trm_reg_read8(TRMREG_GEN_NVRAM);
  bData <<= 1;
  if (bReadData & NVR_BITIN) {
   bData |= 1;
  }
  NVRAM_trm_wait_30us(pACB);
 }



 trm_reg_write8(0, TRMREG_GEN_NVRAM);
 return (bData);
}
