
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct bwi_softc {int dummy; } ;


 scalar_t__ BWI_SPROM_START ;
 scalar_t__ CSR_READ_2 (struct bwi_softc*,scalar_t__) ;

uint16_t
bwi_read_sprom(struct bwi_softc *sc, uint16_t ofs)
{
 return CSR_READ_2(sc, ofs + BWI_SPROM_START);
}
