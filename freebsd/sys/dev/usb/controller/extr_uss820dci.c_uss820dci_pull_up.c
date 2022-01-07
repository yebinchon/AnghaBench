
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int d_pulled_up; scalar_t__ port_powered; } ;
struct uss820dci_softc {TYPE_1__ sc_flags; } ;


 int DPRINTF (char*) ;
 int USS820_MCSR ;
 int USS820_MCSR_DPEN ;
 int USS820_READ_1 (struct uss820dci_softc*,int ) ;
 int USS820_WRITE_1 (struct uss820dci_softc*,int ,int ) ;

__attribute__((used)) static void
uss820dci_pull_up(struct uss820dci_softc *sc)
{
 uint8_t temp;



 if (!sc->sc_flags.d_pulled_up &&
     sc->sc_flags.port_powered) {
  sc->sc_flags.d_pulled_up = 1;

  DPRINTF("\n");

  temp = USS820_READ_1(sc, USS820_MCSR);
  temp |= USS820_MCSR_DPEN;
  USS820_WRITE_1(sc, USS820_MCSR, temp);
 }
}
