
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pmu_softc {int dummy; } ;


 int pmu_read_reg (struct pmu_softc*,int ) ;
 int pmu_write_reg (struct pmu_softc*,int ,int ) ;
 int vBufB ;
 int vPB4 ;

__attribute__((used)) static void
pmu_ack_off(struct pmu_softc *sc)
{
 uint8_t reg;

 reg = pmu_read_reg(sc, vBufB);
 reg &= ~vPB4;
 pmu_write_reg(sc, vBufB, reg);
}
