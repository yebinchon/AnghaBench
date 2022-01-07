
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_controller {scalar_t__ ccc; int pmim; int mim; int gmim; int mtx; int r_mem; int msia; } ;
struct mvs_channel {int unit; } ;
typedef int device_t ;


 int ATA_OUTL (int ,int ,int) ;
 int CHIP_MIM ;
 int IC_DONE_IRQ ;
 int MVS_EDMA_OFF ;
 struct mvs_controller* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
mvs_edma(device_t dev, device_t child, int mode)
{
 struct mvs_controller *ctlr = device_get_softc(dev);
 int unit = ((struct mvs_channel *)device_get_softc(child))->unit;
 int bit = IC_DONE_IRQ << (unit * 2 + unit / 4) ;

 if (ctlr->ccc == 0)
  return;

 mtx_lock(&ctlr->mtx);
 if (mode == MVS_EDMA_OFF)
  ctlr->pmim |= bit;
 else
  ctlr->pmim &= ~bit;
 ctlr->mim = ctlr->gmim | ctlr->pmim;
 if (!ctlr->msia)
  ATA_OUTL(ctlr->r_mem, CHIP_MIM, ctlr->mim);
 mtx_unlock(&ctlr->mtx);
}
