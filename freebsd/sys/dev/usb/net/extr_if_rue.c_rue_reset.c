
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ue_dev; } ;
struct rue_softc {TYPE_1__ sc_ue; } ;


 int RUE_CR ;
 int RUE_CR_SOFT_RST ;
 int RUE_TIMEOUT ;
 int device_printf (int ,char*) ;
 int hz ;
 int rue_csr_read_1 (struct rue_softc*,int ) ;
 int rue_csr_write_1 (struct rue_softc*,int ,int) ;
 scalar_t__ uether_pause (TYPE_1__*,int) ;

__attribute__((used)) static void
rue_reset(struct rue_softc *sc)
{
 int i;

 rue_csr_write_1(sc, RUE_CR, RUE_CR_SOFT_RST);

 for (i = 0; i != RUE_TIMEOUT; i++) {
  if (uether_pause(&sc->sc_ue, hz / 1000))
   break;
  if (!(rue_csr_read_1(sc, RUE_CR) & RUE_CR_SOFT_RST))
   break;
 }
 if (i == RUE_TIMEOUT)
  device_printf(sc->sc_ue.ue_dev, "reset never completed\n");

 uether_pause(&sc->sc_ue, hz / 100);
}
