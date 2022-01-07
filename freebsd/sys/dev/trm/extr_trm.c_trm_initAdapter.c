
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
typedef size_t u_int16_t ;
struct TYPE_6__ {int Config; } ;
struct TYPE_5__ {int NvramChannelCfg; int NvramScsiId; } ;
typedef TYPE_1__* PNVRAMTYPE ;
typedef TYPE_2__* PACB ;


 int BLOCKRST ;
 int DMA_ENHANCE ;
 size_t DO_RSTMODULE ;
 int EN_SCSIINTR ;
 int HCC_AUTOTERM ;
 int HCC_PARITY ;
 int HCC_SCSI_RESET ;
 int HCC_WIDE_CARD ;
 int INITIATOR ;
 int NAC_POWERON_SCSI_RESET ;
 int PARITYCHECK ;
 int PHASELATCH ;
 int SEL_TIMEOUT ;
 int TRMREG_DMA_CONFIG ;
 int TRMREG_DMA_INTEN ;
 int TRMREG_GEN_CONTROL ;
 int TRMREG_GEN_STATUS ;
 int TRMREG_SCSI_CONFIG0 ;
 int TRMREG_SCSI_CONFIG1 ;
 int TRMREG_SCSI_CONTROL ;
 int TRMREG_SCSI_HOSTID ;
 int TRMREG_SCSI_INTEN ;
 int TRMREG_SCSI_INTSTATUS ;
 int TRMREG_SCSI_OFFSET ;
 int TRMREG_SCSI_TIMEOUT ;
 int WIDESCSI ;
 TYPE_1__* trm_eepromBuf ;
 int trm_reg_read16 (int ) ;
 int trm_reg_read8 (int ) ;
 int trm_reg_write16 (size_t,int ) ;
 int trm_reg_write8 (int,int ) ;

__attribute__((used)) static int
trm_initAdapter(PACB pACB, u_int16_t unit)
{
 PNVRAMTYPE pEEpromBuf;
 u_int16_t wval;
 u_int8_t bval;

 pEEpromBuf = &trm_eepromBuf[unit];


 trm_reg_write8(SEL_TIMEOUT, TRMREG_SCSI_TIMEOUT);

 trm_reg_write8(0x00, TRMREG_DMA_INTEN);
 trm_reg_write8(0x00, TRMREG_SCSI_INTEN);

 trm_reg_write16(DO_RSTMODULE, TRMREG_SCSI_CONTROL);

 pACB->Config = HCC_AUTOTERM | HCC_PARITY;
 if (trm_reg_read8(TRMREG_GEN_STATUS) & WIDESCSI)
  pACB->Config |= HCC_WIDE_CARD;
 if (pEEpromBuf->NvramChannelCfg & NAC_POWERON_SCSI_RESET)
  pACB->Config |= HCC_SCSI_RESET;
 if (pACB->Config & HCC_PARITY)
  bval = PHASELATCH | INITIATOR | BLOCKRST | PARITYCHECK;
 else
  bval = PHASELATCH | INITIATOR | BLOCKRST ;
 trm_reg_write8(bval,TRMREG_SCSI_CONFIG0);

 trm_reg_write8(0x13, TRMREG_SCSI_CONFIG1);

 bval = pEEpromBuf->NvramScsiId;
 trm_reg_write8(bval, TRMREG_SCSI_HOSTID);

 trm_reg_write8(0x00, TRMREG_SCSI_OFFSET);

 wval = trm_reg_read16(TRMREG_GEN_CONTROL) & 0x7F;
 trm_reg_write16(wval, TRMREG_GEN_CONTROL);

 wval = trm_reg_read16(TRMREG_DMA_CONFIG) | DMA_ENHANCE;
 trm_reg_write16(wval, TRMREG_DMA_CONFIG);

 trm_reg_read8(TRMREG_SCSI_INTSTATUS);

 trm_reg_write8(0x7F, TRMREG_SCSI_INTEN);
 trm_reg_write8(EN_SCSIINTR, TRMREG_DMA_INTEN);
 return (0);
}
