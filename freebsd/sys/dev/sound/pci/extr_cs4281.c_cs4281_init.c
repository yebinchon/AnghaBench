
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; } ;


 int AC97_MIX_AUXOUT ;
 int AC97_MIX_MASTER ;
 int AC97_REG_POWER ;
 int CS4281PCI_ACCTL ;
 int CS4281PCI_ACCTL_ESYN ;
 int CS4281PCI_ACCTL_VFRM ;
 int CS4281PCI_ACISV ;
 int CS4281PCI_ACISV_ISV (int) ;
 int CS4281PCI_ACOSV ;
 int CS4281PCI_ACOSV_SLV (int) ;
 int CS4281PCI_ACSTS ;
 int CS4281PCI_ACSTS_CRDY ;
 int CS4281PCI_CLKCR1 ;
 int CS4281PCI_CLKCR1_DLLP ;
 int CS4281PCI_CLKCR1_DLLRDY ;
 int CS4281PCI_CLKCR1_SWCE ;
 int CS4281PCI_DCR (int ) ;
 int CS4281PCI_DCR_HTCIE ;
 int CS4281PCI_DCR_MSK ;
 int CS4281PCI_DCR_TCIE ;
 int CS4281PCI_DMR (int ) ;
 int CS4281PCI_DMR_AUTO ;
 int CS4281PCI_DMR_DMA ;
 int CS4281PCI_DMR_TR_PLAY ;
 int CS4281PCI_DMR_TR_REC ;
 int CS4281PCI_FCR (int ) ;
 int CS4281PCI_FCR_FEN ;
 int CS4281PCI_FCR_LS (int ) ;
 int CS4281PCI_FCR_OF (scalar_t__) ;
 int CS4281PCI_FCR_PSH ;
 int CS4281PCI_FCR_RS (int ) ;
 int CS4281PCI_FCR_SZ (scalar_t__) ;
 int CS4281PCI_HIMR ;
 int CS4281PCI_HIMR_DMA (int ) ;
 int CS4281PCI_HIMR_DMAI ;
 int CS4281PCI_LPCM_PLAY_SLOT ;
 int CS4281PCI_LPCM_REC_SLOT ;
 int CS4281PCI_PPLVC ;
 int CS4281PCI_PPRVC ;
 int CS4281PCI_RPCM_PLAY_SLOT ;
 int CS4281PCI_RPCM_REC_SLOT ;
 int CS4281PCI_SERMC ;
 int CS4281PCI_SERMC_PTC_AC97 ;
 int CS4281PCI_SPMC ;
 int CS4281PCI_SPMC_RSTN ;
 int CS4281PCI_SRCSA ;
 int CS4281PCI_SRCSA_CLSS (int ) ;
 int CS4281PCI_SRCSA_CRSS (int ) ;
 int CS4281PCI_SRCSA_PLSS (int ) ;
 int CS4281PCI_SRCSA_PRSS (int ) ;
 int CS4281PCI_SSPM ;
 int CS4281PCI_SSPM_ACLEN ;
 int CS4281PCI_SSPM_CSRCEN ;
 int CS4281PCI_SSPM_MIXEN ;
 int CS4281PCI_SSPM_PSRCEN ;
 int CS4281_DMA_PLAY ;
 int CS4281_DMA_REC ;
 scalar_t__ CS4281_FIFO_SIZE ;
 int DELAY (int) ;
 int cs4281_clr4 (struct sc_info*,int ,int) ;
 int cs4281_rdcd (int ,struct sc_info*,int ) ;
 int cs4281_set4 (struct sc_info*,int ,int) ;
 scalar_t__ cs4281_waitset (struct sc_info*,int ,int,int) ;
 int cs4281_wr (struct sc_info*,int ,int) ;
 int cs4281_wrcd (int ,struct sc_info*,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
cs4281_init(struct sc_info *sc)
{
    u_int32_t i, v;


    cs4281_wr(sc, CS4281PCI_CLKCR1, 0);
    cs4281_wr(sc, CS4281PCI_SERMC, 0);


    cs4281_wr(sc, CS4281PCI_ACCTL, 0);
    DELAY(50);


    cs4281_wr(sc, CS4281PCI_SPMC, 0);
    DELAY(100);
    cs4281_wr(sc, CS4281PCI_SPMC, CS4281PCI_SPMC_RSTN);

    DELAY(50000);


    cs4281_wr(sc, CS4281PCI_CLKCR1, CS4281PCI_CLKCR1_DLLP);
    DELAY(50000);
    cs4281_wr(sc, CS4281PCI_CLKCR1,
       CS4281PCI_CLKCR1_DLLP | CS4281PCI_CLKCR1_SWCE);


    cs4281_set4(sc, CS4281PCI_SSPM,
  CS4281PCI_SSPM_ACLEN | CS4281PCI_SSPM_PSRCEN |
  CS4281PCI_SSPM_CSRCEN | CS4281PCI_SSPM_MIXEN);


    if (cs4281_waitset(sc,
         CS4281PCI_CLKCR1,
         CS4281PCI_CLKCR1_DLLRDY,
         250) == 0) {
 device_printf(sc->dev, "Clock stabilization failed\n");
 return -1;
    }


    cs4281_wr(sc, CS4281PCI_ACCTL,CS4281PCI_ACCTL_ESYN);


    DELAY(50000);


    cs4281_wr(sc, CS4281PCI_SERMC, CS4281PCI_SERMC_PTC_AC97);


    if (cs4281_waitset(sc, CS4281PCI_ACSTS, CS4281PCI_ACSTS_CRDY, 250) == 0) {
 device_printf(sc->dev, "codec did not avail\n");
 return -1;
    }



    cs4281_wr(sc,
       CS4281PCI_ACCTL,
       CS4281PCI_ACCTL_VFRM | CS4281PCI_ACCTL_ESYN);


    for(i = 0 ; i < 1000; i++) {
 DELAY(10000);
 v = cs4281_rdcd(0, sc, AC97_REG_POWER);
 if ((v & 0x0f) == 0x0f) {
     break;
 }
    }
    if (i == 1000) {
 device_printf(sc->dev, "codec failed to calibrate\n");
 return -1;
    }


    cs4281_wr(sc, CS4281PCI_SERMC, CS4281PCI_SERMC_PTC_AC97);


    if (cs4281_waitset(sc,
         CS4281PCI_ACISV,
         CS4281PCI_ACISV_ISV(3) | CS4281PCI_ACISV_ISV(4),
         10000) == 0) {
 device_printf(sc->dev, "cs4281 never got valid data\n");
 return -1;
    }


    cs4281_wr(sc,
       CS4281PCI_ACOSV,
       CS4281PCI_ACOSV_SLV(3) | CS4281PCI_ACOSV_SLV(4));


    cs4281_wrcd(0, sc, AC97_MIX_AUXOUT, 0);
    cs4281_wrcd(0, sc, AC97_MIX_MASTER, 0);


    v = cs4281_rdcd(0, sc, AC97_REG_POWER) & 0xfdff;
    cs4281_wrcd(0, sc, AC97_REG_POWER, v);


    for(i = 0; i < 320; i++) {
 DELAY(100);
 v = cs4281_rdcd(0, sc, AC97_REG_POWER);
 if (v & 0x02) break;
    }


    v = cs4281_rdcd(0, sc, AC97_REG_POWER) & 0xfeff;
    cs4281_wrcd(0, sc, AC97_REG_POWER, v);


    for(i = 0; i < 320; i++) {
 DELAY(100);
 v = cs4281_rdcd(0, sc, AC97_REG_POWER);
 if (v & 0x01) break;
    }




    v = CS4281PCI_FCR_RS(CS4281PCI_RPCM_PLAY_SLOT) |
 CS4281PCI_FCR_LS(CS4281PCI_LPCM_PLAY_SLOT) |
 CS4281PCI_FCR_SZ(CS4281_FIFO_SIZE)|
 CS4281PCI_FCR_OF(0);
    cs4281_wr(sc, CS4281PCI_FCR(CS4281_DMA_PLAY), v);

    cs4281_wr(sc, CS4281PCI_FCR(CS4281_DMA_PLAY), v | CS4281PCI_FCR_FEN);


    v = CS4281PCI_FCR_RS(CS4281PCI_RPCM_REC_SLOT) |
 CS4281PCI_FCR_LS(CS4281PCI_LPCM_REC_SLOT) |
 CS4281PCI_FCR_SZ(CS4281_FIFO_SIZE)|
 CS4281PCI_FCR_OF(CS4281_FIFO_SIZE + 1);
    cs4281_wr(sc, CS4281PCI_FCR(CS4281_DMA_REC), v | CS4281PCI_FCR_PSH);
    cs4281_wr(sc, CS4281PCI_FCR(CS4281_DMA_REC), v | CS4281PCI_FCR_FEN);


    v = CS4281PCI_SRCSA_PLSS(CS4281PCI_LPCM_PLAY_SLOT) |
 CS4281PCI_SRCSA_PRSS(CS4281PCI_RPCM_PLAY_SLOT) |
 CS4281PCI_SRCSA_CLSS(CS4281PCI_LPCM_REC_SLOT) |
 CS4281PCI_SRCSA_CRSS(CS4281PCI_RPCM_REC_SLOT);
    cs4281_wr(sc, CS4281PCI_SRCSA, v);


    cs4281_wr(sc,
       CS4281PCI_DMR(CS4281_DMA_PLAY),
       CS4281PCI_DMR_DMA |
       CS4281PCI_DMR_AUTO |
       CS4281PCI_DMR_TR_PLAY);
    cs4281_wr(sc,
       CS4281PCI_DMR(CS4281_DMA_REC),
       CS4281PCI_DMR_DMA |
       CS4281PCI_DMR_AUTO |
       CS4281PCI_DMR_TR_REC);


    cs4281_wr(sc,
       CS4281PCI_DCR(CS4281_DMA_PLAY),
       CS4281PCI_DCR_TCIE | CS4281PCI_DCR_HTCIE | CS4281PCI_DCR_MSK);
    cs4281_wr(sc,
       CS4281PCI_DCR(CS4281_DMA_REC),
       CS4281PCI_DCR_TCIE | CS4281PCI_DCR_HTCIE | CS4281PCI_DCR_MSK);


    cs4281_clr4(sc,
  CS4281PCI_HIMR,
  CS4281PCI_HIMR_DMAI |
  CS4281PCI_HIMR_DMA(CS4281_DMA_PLAY) |
  CS4281PCI_HIMR_DMA(CS4281_DMA_REC));


    cs4281_wr(sc, CS4281PCI_PPLVC, 7);
    cs4281_wr(sc, CS4281PCI_PPRVC, 7);

    return 0;
}
