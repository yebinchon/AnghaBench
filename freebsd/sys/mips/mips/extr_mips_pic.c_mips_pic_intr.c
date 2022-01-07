
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct mips_pic_softc {int pic_dev; } ;
typedef int register_t ;
struct TYPE_6__ {int td_intr_frame; } ;
struct TYPE_5__ {int td_pflags; struct trapframe* td_intr_frame; } ;


 int FILTER_HANDLED ;
 int KASSERT (int,char*) ;
 int MIPS_INT_MASK ;
 TYPE_1__* PCPU_GET (TYPE_2__*) ;
 int PIC_INTR_ISRC (struct mips_pic_softc*,int) ;
 int PMC_FN_USER_CALLCHAIN ;
 int TDP_CALLCHAIN ;
 TYPE_2__* curthread ;
 int device_printf (int ,char*,int) ;
 int fls (int) ;
 scalar_t__ intr_isrc_dispatch (int ,int ) ;
 int mips_rd_cause () ;
 int mips_rd_status () ;
 int pic_irq_mask (struct mips_pic_softc*,int) ;
 int pmc_hook (TYPE_1__*,int ,struct trapframe*) ;

int
mips_pic_intr(void *arg)
{
 struct mips_pic_softc *sc = arg;
 register_t cause, status;
 int i, intr;

 cause = mips_rd_cause();
 status = mips_rd_status();
 intr = (cause & MIPS_INT_MASK) >> 8;





 intr &= (status & MIPS_INT_MASK) >> 8;
 while ((i = fls(intr)) != 0) {
  i--;
  intr &= ~(1 << i);

  if (intr_isrc_dispatch(PIC_INTR_ISRC(sc, i),
      curthread->td_intr_frame) != 0) {
   device_printf(sc->pic_dev,
       "Stray interrupt %u detected\n", i);
   pic_irq_mask(sc, i);
   continue;
  }
 }

 KASSERT(i == 0, ("all interrupts handled"));
 return (FILTER_HANDLED);
}
