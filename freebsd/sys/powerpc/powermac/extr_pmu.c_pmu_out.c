
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pmu_softc {int dummy; } ;


 int pmu_read_reg (struct pmu_softc*,int ) ;
 int pmu_write_reg (struct pmu_softc*,int ,int) ;
 int vACR ;
 int vSR_OUT ;

__attribute__((used)) static void
pmu_out(struct pmu_softc *sc)
{
 uint8_t reg;

 reg = pmu_read_reg(sc, vACR);
 reg |= vSR_OUT;
 reg |= 0x0c;
 pmu_write_reg(sc, vACR, reg);
}
