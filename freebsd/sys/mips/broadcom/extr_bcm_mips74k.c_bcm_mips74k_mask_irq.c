
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ num_cpuirqs; } ;
struct bcm_mips74k_softc {int mem; TYPE_1__ bcm_mips; } ;


 scalar_t__ BCMA_OOB_NUM_BUSLINES ;
 int BCM_MIPS74K_INTR_SEL (scalar_t__) ;
 int BCM_MIPS74K_INTR_SEL_FLAG (scalar_t__) ;
 scalar_t__ BCM_MIPS74K_NUM_INTR ;
 int KASSERT (int,char*) ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static void
bcm_mips74k_mask_irq(struct bcm_mips74k_softc *sc, u_int mips_irq, u_int ivec)
{
 uint32_t oobsel;

 KASSERT(mips_irq < sc->bcm_mips.num_cpuirqs, ("invalid MIPS IRQ %u",
     mips_irq));
 KASSERT(mips_irq < BCM_MIPS74K_NUM_INTR, ("unsupported MIPS IRQ %u",
     mips_irq));
 KASSERT(ivec < BCMA_OOB_NUM_BUSLINES, ("invalid backplane ivec"));

 oobsel = bus_read_4(sc->mem, BCM_MIPS74K_INTR_SEL(mips_irq));
 oobsel &= ~(BCM_MIPS74K_INTR_SEL_FLAG(ivec));
 bus_write_4(sc->mem, BCM_MIPS74K_INTR_SEL(mips_irq), oobsel);
}
