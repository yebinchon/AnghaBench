
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pmu_softc {int dummy; } ;


 int pmu_ack_off (struct pmu_softc*) ;
 int pmu_ack_on (struct pmu_softc*) ;
 scalar_t__ pmu_intr_state (struct pmu_softc*) ;
 int pmu_out (struct pmu_softc*) ;
 int pmu_write_reg (struct pmu_softc*,int ,int ) ;
 int vSR ;

__attribute__((used)) static int
pmu_send_byte(struct pmu_softc *sc, uint8_t data)
{

 pmu_out(sc);
 pmu_write_reg(sc, vSR, data);
 pmu_ack_off(sc);


 do {} while (pmu_intr_state(sc) == 0);
 pmu_ack_on(sc);
 do {} while (pmu_intr_state(sc));
 pmu_ack_on(sc);
 return 0;
}
