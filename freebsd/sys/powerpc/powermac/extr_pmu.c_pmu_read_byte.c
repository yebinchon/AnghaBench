
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
struct pmu_softc {int dummy; } ;


 int pmu_ack_off (struct pmu_softc*) ;
 int pmu_ack_on (struct pmu_softc*) ;
 int pmu_in (struct pmu_softc*) ;
 scalar_t__ pmu_intr_state (struct pmu_softc*) ;
 void* pmu_read_reg (struct pmu_softc*,int ) ;
 int vSR ;

__attribute__((used)) static inline int
pmu_read_byte(struct pmu_softc *sc, uint8_t *data)
{
 volatile uint8_t scratch;
 pmu_in(sc);
 scratch = pmu_read_reg(sc, vSR);
 pmu_ack_off(sc);

 do {} while (pmu_intr_state(sc) == 0);
 pmu_ack_on(sc);
 do {} while (pmu_intr_state(sc));
 *data = pmu_read_reg(sc, vSR);
 return 0;
}
