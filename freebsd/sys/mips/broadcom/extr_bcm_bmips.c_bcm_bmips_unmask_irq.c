
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ num_cpuirqs; } ;
struct bcm_bmips_softc {int cfg; TYPE_1__ bcm_mips; } ;


 int KASSERT (int,char*) ;
 int SIBA_CFG0_INTVEC ;
 int SIBA_CFG0_IPSFLAG ;
 int SIBA_IPS_INT1_MASK ;
 scalar_t__ SIBA_IPS_INT_MASK (scalar_t__) ;
 scalar_t__ SIBA_IPS_INT_SHIFT (scalar_t__) ;
 scalar_t__ SIBA_MAX_INTR ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;

__attribute__((used)) static void
bcm_bmips_unmask_irq(struct bcm_bmips_softc *sc, u_int mips_irq, u_int ivec)
{
 KASSERT(ivec < SIBA_MAX_INTR, ("invalid sbflag# ivec"));
 KASSERT(mips_irq < sc->bcm_mips.num_cpuirqs, ("invalid MIPS IRQ %u",
     mips_irq));

 if (mips_irq == 0) {
  uint32_t sbintvec;

  sbintvec = bus_read_4(sc->cfg, SIBA_CFG0_INTVEC);
  sbintvec |= (1 << ivec);
  bus_write_4(sc->cfg, SIBA_CFG0_INTVEC, sbintvec);
 } else {
  uint32_t ipsflag;


  KASSERT(((1 << ivec) & SIBA_IPS_INT1_MASK) != 0,
      ("cannot route high sbflag# ivec %u", ivec));

  ipsflag = bus_read_4(sc->cfg, SIBA_CFG0_IPSFLAG);
  ipsflag |= (ivec << SIBA_IPS_INT_SHIFT(mips_irq)) &
      SIBA_IPS_INT_MASK(mips_irq);
  bus_write_4(sc->cfg, SIBA_CFG0_IPSFLAG, ipsflag);
 }
}
