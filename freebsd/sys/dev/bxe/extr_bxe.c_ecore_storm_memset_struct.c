
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;


 int REG_WR (struct bxe_softc*,scalar_t__,scalar_t__) ;

void
ecore_storm_memset_struct(struct bxe_softc *sc,
                          uint32_t addr,
                          size_t size,
                          uint32_t *data)
{
    uint8_t i;
    for (i = 0; i < size/4; i++) {
        REG_WR(sc, addr + (i * 4), data[i]);
    }
}
