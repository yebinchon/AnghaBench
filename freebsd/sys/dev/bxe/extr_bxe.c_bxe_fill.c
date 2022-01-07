
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int REG_WR (struct bxe_softc*,int,int) ;
 int REG_WR8 (struct bxe_softc*,int,int) ;

__attribute__((used)) static void
bxe_fill(struct bxe_softc *sc,
         uint32_t addr,
         int fill,
         uint32_t len)
{
    uint32_t i;

    if (!(len % 4) && !(addr % 4)) {
        for (i = 0; i < len; i += 4) {
            REG_WR(sc, (addr + i), fill);
        }
    } else {
        for (i = 0; i < len; i++) {
            REG_WR8(sc, (addr + i), fill);
        }
    }
}
