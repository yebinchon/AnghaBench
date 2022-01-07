
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cbb_softc {int * exca; } ;


 int EXCA_INTR ;
 int exca_getb (int *,int ) ;
 int exca_putb (int *,int ,int) ;

__attribute__((used)) static uint8_t
cbb_o2micro_power_hack(struct cbb_softc *sc)
{
 uint8_t reg;
 reg = exca_getb(&sc->exca[0], EXCA_INTR);
 exca_putb(&sc->exca[0], EXCA_INTR, (reg & 0xf0) | 1);
 return (reg);
}
