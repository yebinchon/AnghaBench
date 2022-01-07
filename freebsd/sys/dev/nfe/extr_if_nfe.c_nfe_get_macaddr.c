
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct nfe_softc {int nfe_flags; } ;


 int NFE_CORRECT_MACADDR ;
 int NFE_MACADDR_HI ;
 int NFE_MACADDR_LO ;
 int NFE_READ (struct nfe_softc*,int ) ;

__attribute__((used)) static void
nfe_get_macaddr(struct nfe_softc *sc, uint8_t *addr)
{
 uint32_t val;

 if ((sc->nfe_flags & NFE_CORRECT_MACADDR) == 0) {
  val = NFE_READ(sc, NFE_MACADDR_LO);
  addr[0] = (val >> 8) & 0xff;
  addr[1] = (val & 0xff);

  val = NFE_READ(sc, NFE_MACADDR_HI);
  addr[2] = (val >> 24) & 0xff;
  addr[3] = (val >> 16) & 0xff;
  addr[4] = (val >> 8) & 0xff;
  addr[5] = (val & 0xff);
 } else {
  val = NFE_READ(sc, NFE_MACADDR_LO);
  addr[5] = (val >> 8) & 0xff;
  addr[4] = (val & 0xff);

  val = NFE_READ(sc, NFE_MACADDR_HI);
  addr[3] = (val >> 24) & 0xff;
  addr[2] = (val >> 16) & 0xff;
  addr[1] = (val >> 8) & 0xff;
  addr[0] = (val & 0xff);
 }
}
