
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uchcom_softc {scalar_t__ sc_version; scalar_t__ sc_rts; scalar_t__ sc_dtr; } ;


 int UCHCOM_DTR_MASK ;
 int UCHCOM_RTS_MASK ;
 scalar_t__ UCHCOM_VER_20 ;
 int uchcom_set_dtr_rts_10 (struct uchcom_softc*,int ) ;
 int uchcom_set_dtr_rts_20 (struct uchcom_softc*,int ) ;

__attribute__((used)) static void
uchcom_set_dtr_rts(struct uchcom_softc *sc)
{
 uint8_t val = 0;

 if (sc->sc_dtr)
  val |= UCHCOM_DTR_MASK;
 if (sc->sc_rts)
  val |= UCHCOM_RTS_MASK;

 if (sc->sc_version < UCHCOM_VER_20)
  uchcom_set_dtr_rts_10(sc, ~val);
 else
  uchcom_set_dtr_rts_20(sc, ~val);
}
