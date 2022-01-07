
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct alc_softc {int* alc_eaddr; } ;


 int ALC_PAR0 ;
 int ALC_PAR1 ;
 int CSR_READ_4 (struct alc_softc*,int ) ;

__attribute__((used)) static void
alc_get_macaddr_par(struct alc_softc *sc)
{
 uint32_t ea[2];

 ea[0] = CSR_READ_4(sc, ALC_PAR0);
 ea[1] = CSR_READ_4(sc, ALC_PAR1);
 sc->alc_eaddr[0] = (ea[1] >> 8) & 0xFF;
 sc->alc_eaddr[1] = (ea[1] >> 0) & 0xFF;
 sc->alc_eaddr[2] = (ea[0] >> 24) & 0xFF;
 sc->alc_eaddr[3] = (ea[0] >> 16) & 0xFF;
 sc->alc_eaddr[4] = (ea[0] >> 8) & 0xFF;
 sc->alc_eaddr[5] = (ea[0] >> 0) & 0xFF;
}
