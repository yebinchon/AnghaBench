
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGE (struct bxe_softc*,char*) ;
 int DELAY (int) ;
 scalar_t__ GRCBASE_MCP ;
 int REG_RD (struct bxe_softc*,scalar_t__) ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;

__attribute__((used)) static int bxe_acquire_alr(struct bxe_softc *sc)
{
    uint32_t j, val;

    for (j = 0; j < 1000; j++) {
        val = (1UL << 31);
        REG_WR(sc, GRCBASE_MCP + 0x9c, val);
        val = REG_RD(sc, GRCBASE_MCP + 0x9c);
        if (val & (1L << 31))
            break;

        DELAY(5000);
    }

    if (!(val & (1L << 31))) {
        BLOGE(sc, "Cannot acquire MCP access lock register\n");
        return (-1);
    }

    return (0);
}
