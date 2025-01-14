
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uchcom_softc {int sc_dtr; int sc_rts; int sc_msr; } ;


 int UCHCOM_DTR_MASK ;
 int UCHCOM_RTS_MASK ;

__attribute__((used)) static void
uchcom_convert_status(struct uchcom_softc *sc, uint8_t cur)
{
 sc->sc_dtr = !(cur & UCHCOM_DTR_MASK);
 sc->sc_rts = !(cur & UCHCOM_RTS_MASK);

 cur = ~cur & 0x0F;
 sc->sc_msr = (cur << 4) | ((sc->sc_msr >> 4) ^ cur);
}
