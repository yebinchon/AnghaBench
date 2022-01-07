
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ue_dev; } ;
struct aue_softc {int sc_flags; TYPE_1__ sc_ue; } ;


 int AUE_CTL1 ;
 int AUE_CTL1_RESETMAC ;
 int AUE_FLAG_LSYS ;
 int AUE_FLAG_PII ;
 int AUE_GPIO0 ;
 int AUE_GPIO_OUT0 ;
 int AUE_GPIO_SEL0 ;
 int AUE_GPIO_SEL1 ;
 int AUE_SETBIT (struct aue_softc*,int ,int) ;
 int AUE_TIMEOUT ;
 int aue_csr_read_1 (struct aue_softc*,int ) ;
 int aue_csr_write_1 (struct aue_softc*,int ,int) ;
 int aue_reset_pegasus_II (struct aue_softc*) ;
 int device_printf (int ,char*) ;
 int hz ;
 scalar_t__ uether_pause (TYPE_1__*,int) ;

__attribute__((used)) static void
aue_reset(struct aue_softc *sc)
{
 int i;

 AUE_SETBIT(sc, AUE_CTL1, AUE_CTL1_RESETMAC);

 for (i = 0; i != AUE_TIMEOUT; i++) {
  if (!(aue_csr_read_1(sc, AUE_CTL1) & AUE_CTL1_RESETMAC))
   break;
  if (uether_pause(&sc->sc_ue, hz / 100))
   break;
 }

 if (i == AUE_TIMEOUT)
  device_printf(sc->sc_ue.ue_dev, "reset failed\n");
 aue_csr_write_1(sc, AUE_GPIO0, AUE_GPIO_SEL0|AUE_GPIO_SEL1);
 aue_csr_write_1(sc, AUE_GPIO0, AUE_GPIO_SEL0|AUE_GPIO_SEL1|AUE_GPIO_OUT0);

 if (sc->sc_flags & AUE_FLAG_LSYS) {

  aue_csr_write_1(sc, AUE_GPIO0, AUE_GPIO_SEL0|AUE_GPIO_SEL1);
  aue_csr_write_1(sc, AUE_GPIO0,
      AUE_GPIO_SEL0|AUE_GPIO_SEL1|AUE_GPIO_OUT0);
 }
 if (sc->sc_flags & AUE_FLAG_PII)
  aue_reset_pegasus_II(sc);


 uether_pause(&sc->sc_ue, hz / 100);
}
