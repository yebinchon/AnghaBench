
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct bwi_softc {int dummy; } ;


 int bwi_read_sprom (struct bwi_softc*,scalar_t__) ;
 scalar_t__ htobe16 (int ) ;

__attribute__((used)) static void
bwi_get_eaddr(struct bwi_softc *sc, uint16_t eaddr_ofs, uint8_t *eaddr)
{
 int i;

 for (i = 0; i < 3; ++i) {
  *((uint16_t *)eaddr + i) =
   htobe16(bwi_read_sprom(sc, eaddr_ofs + 2 * i));
 }
}
