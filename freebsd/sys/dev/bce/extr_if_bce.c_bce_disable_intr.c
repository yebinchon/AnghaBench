
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bce_softc {int dummy; } ;


 int BCE_PCICFG_INT_ACK_CMD ;
 int BCE_PCICFG_INT_ACK_CMD_MASK_INT ;
 int BCE_VERBOSE_INTR ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int REG_RD (struct bce_softc*,int ) ;
 int REG_WR (struct bce_softc*,int ,int ) ;

__attribute__((used)) static void
bce_disable_intr(struct bce_softc *sc)
{
 DBENTER(BCE_VERBOSE_INTR);

 REG_WR(sc, BCE_PCICFG_INT_ACK_CMD, BCE_PCICFG_INT_ACK_CMD_MASK_INT);
 REG_RD(sc, BCE_PCICFG_INT_ACK_CMD);

 DBEXIT(BCE_VERBOSE_INTR);
}
