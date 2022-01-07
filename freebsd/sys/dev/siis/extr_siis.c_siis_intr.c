
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_4__ {scalar_t__ r_irq_rid; } ;
struct siis_controller {int channels; int gctl; int r_gmem; TYPE_2__ irq; TYPE_1__* interrupt; } ;
struct TYPE_3__ {int (* function ) (void*) ;void* argument; } ;


 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int SIIS_GCTL ;
 int SIIS_GCTL_MSIACK ;
 int SIIS_IS ;
 int SIIS_IS_PORT (int) ;
 int stub1 (void*) ;

__attribute__((used)) static void
siis_intr(void *data)
{
 struct siis_controller *ctlr = (struct siis_controller *)data;
 u_int32_t is;
 void *arg;
 int unit;

 is = ATA_INL(ctlr->r_gmem, SIIS_IS);
 for (unit = 0; unit < ctlr->channels; unit++) {
  if ((is & SIIS_IS_PORT(unit)) != 0 &&
      (arg = ctlr->interrupt[unit].argument)) {
   ctlr->interrupt[unit].function(arg);
  }
 }

 if (ctlr->irq.r_irq_rid) {
  ATA_OUTL(ctlr->r_gmem, SIIS_GCTL,
      ctlr->gctl | SIIS_GCTL_MSIACK);
 }
}
