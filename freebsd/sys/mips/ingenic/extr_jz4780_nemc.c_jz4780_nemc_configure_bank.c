
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint32_t ;
typedef int u_int ;
struct jz4780_nemc_softc {int banks; int dev; } ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;


 int CSR_READ_4 (struct jz4780_nemc_softc*,int ) ;
 int CSR_WRITE_4 (struct jz4780_nemc_softc*,int ,int) ;
 int JZ4780_NEMC_NS_TO_TICKS (struct jz4780_nemc_softc*,int ) ;
 int JZ_NEMC_SMCR (int) ;
 int JZ_NEMC_SMCR_SMT_MASK ;
 int JZ_NEMC_SMCR_SMT_NORMAL ;
 int JZ_NEMC_SMCR_SMT_SHIFT ;
 int JZ_NEMC_SMCR_STRV_MASK ;
 int JZ_NEMC_SMCR_STRV_SHIFT ;
 int JZ_NEMC_SMCR_TAH_MASK ;
 int JZ_NEMC_SMCR_TAH_SHIFT ;
 int JZ_NEMC_SMCR_TAS_MASK ;
 int JZ_NEMC_SMCR_TAS_SHIFT ;
 int JZ_NEMC_SMCR_TAW_MASK ;
 int JZ_NEMC_SMCR_TAW_SHIFT ;
 int JZ_NEMC_SMCR_TBP_MASK ;
 int JZ_NEMC_SMCR_TBP_SHIFT ;
 scalar_t__ OF_getencprop (int ,char*,int *,int) ;
 int device_printf (int ,char*,char*,int ,int,int) ;
 int ofw_bus_get_node (int ) ;
 int* ticks_to_tBP_tAW ;

__attribute__((used)) static int
jz4780_nemc_configure_bank(struct jz4780_nemc_softc *sc,
        device_t dev, u_int bank)
{
 uint32_t smcr, cycles;
 phandle_t node;
 pcell_t val;


 if (sc->banks & (1 << bank))
  return 0;

 smcr = CSR_READ_4(sc, JZ_NEMC_SMCR(bank));

 smcr &= ~JZ_NEMC_SMCR_SMT_MASK;
 smcr |= JZ_NEMC_SMCR_SMT_NORMAL << JZ_NEMC_SMCR_SMT_SHIFT;

 node = ofw_bus_get_node(dev);
 if (OF_getencprop(node, "ingenic,nemc-tAS", &val, sizeof(val)) > 0) {
  cycles = JZ4780_NEMC_NS_TO_TICKS(sc, val);
  if (cycles > 15) {
   device_printf(sc->dev,
       "invalid value of %s %u (%u cycles), maximum %u cycles supported\n",
       "ingenic,nemc-tAS", val, cycles, 15);
   return -1;
  }
  smcr &= ~JZ_NEMC_SMCR_TAS_MASK;
  smcr |= cycles << JZ_NEMC_SMCR_TAS_SHIFT;
 }

 if (OF_getencprop(node, "ingenic,nemc-tAH", &val, sizeof(val)) > 0) {
  cycles = JZ4780_NEMC_NS_TO_TICKS(sc, val);
  if (cycles > 15) {
   device_printf(sc->dev,
       "invalid value of %s %u (%u cycles), maximum %u cycles supported\n",
       "ingenic,nemc-tAH", val, cycles, 15);
   return -1;
  }
  smcr &= ~JZ_NEMC_SMCR_TAH_MASK;
  smcr |= cycles << JZ_NEMC_SMCR_TAH_SHIFT;
 }

 if (OF_getencprop(node, "ingenic,nemc-tBP", &val, sizeof(val)) > 0) {
  cycles = JZ4780_NEMC_NS_TO_TICKS(sc, val);
  if (cycles > 31) {
   device_printf(sc->dev,
       "invalid value of %s %u (%u cycles), maximum %u cycles supported\n",
       "ingenic,nemc-tBP", val, cycles, 15);
   return -1;
  }
  smcr &= ~JZ_NEMC_SMCR_TBP_MASK;
  smcr |= ticks_to_tBP_tAW[cycles] << JZ_NEMC_SMCR_TBP_SHIFT;
 }

 if (OF_getencprop(node, "ingenic,nemc-tAW", &val, sizeof(val)) > 0) {
  cycles = JZ4780_NEMC_NS_TO_TICKS(sc, val);
  if (cycles > 31) {
   device_printf(sc->dev,
       "invalid value of %s %u (%u cycles), maximum %u cycles supported\n",
       "ingenic,nemc-tAW", val, cycles, 15);
   return -1;
  }
  smcr &= ~JZ_NEMC_SMCR_TAW_MASK;
  smcr |= ticks_to_tBP_tAW[cycles] << JZ_NEMC_SMCR_TAW_SHIFT;
 }

 if (OF_getencprop(node, "ingenic,nemc-tSTRV", &val, sizeof(val)) > 0) {
  cycles = JZ4780_NEMC_NS_TO_TICKS(sc, val);
  if (cycles > 63) {
   device_printf(sc->dev,
       "invalid value of %s %u (%u cycles), maximum %u cycles supported\n",
       "ingenic,nemc-tSTRV", val, cycles, 15);
   return -1;
  }
  smcr &= ~JZ_NEMC_SMCR_STRV_MASK;
  smcr |= cycles << JZ_NEMC_SMCR_STRV_SHIFT;
 }
 CSR_WRITE_4(sc, JZ_NEMC_SMCR(bank), smcr);
 sc->banks |= (1 << bank);
 return 0;
}
