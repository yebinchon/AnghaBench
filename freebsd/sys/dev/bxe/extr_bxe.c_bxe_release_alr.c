
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 scalar_t__ GRCBASE_MCP ;
 int REG_WR (struct bxe_softc*,scalar_t__,int ) ;

__attribute__((used)) static void bxe_release_alr(struct bxe_softc *sc)
{
    REG_WR(sc, GRCBASE_MCP + 0x9c, 0);
}
