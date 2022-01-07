
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_controller {int ccc; int cccc; int gmim; int pmim; int r_mem; int channels; } ;
typedef int device_t ;


 int ATA_OUTL (int ,int ,int) ;
 int CHIP_SOC_HC0_MASK (int ) ;
 int CHIP_SOC_MIC ;
 int CHIP_SOC_MIM ;
 int HC_IC ;
 int HC_ICT ;
 int HC_ITT ;
 int IC_DONE_HC0 ;
 int IC_ERR_HC0 ;
 int IC_HC0_COAL_DONE ;
 scalar_t__ bootverbose ;
 struct mvs_controller* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int) ;

__attribute__((used)) static int
mvs_ctlr_setup(device_t dev)
{
 struct mvs_controller *ctlr = device_get_softc(dev);
 int ccc = ctlr->ccc, cccc = ctlr->cccc, ccim = 0;


 ATA_OUTL(ctlr->r_mem, CHIP_SOC_MIM, 0x00000000);

 ATA_OUTL(ctlr->r_mem, HC_IC, 0x00000000);

 ATA_OUTL(ctlr->r_mem, CHIP_SOC_MIC, 0);

 if (ccc && bootverbose) {
  device_printf(dev,
      "CCC with %dus/%dcmd enabled\n",
      ctlr->ccc, ctlr->cccc);
 }
 ccc *= 150;
 ATA_OUTL(ctlr->r_mem, HC_ICT, cccc);
 ATA_OUTL(ctlr->r_mem, HC_ITT, ccc);
 if (ccc)
  ccim |= IC_HC0_COAL_DONE;

 ctlr->gmim = ((ccc ? IC_HC0_COAL_DONE :
     (IC_DONE_HC0 & CHIP_SOC_HC0_MASK(ctlr->channels))) |
     (IC_ERR_HC0 & CHIP_SOC_HC0_MASK(ctlr->channels)));
 ATA_OUTL(ctlr->r_mem, CHIP_SOC_MIM, ctlr->gmim | ctlr->pmim);
 return (0);
}
