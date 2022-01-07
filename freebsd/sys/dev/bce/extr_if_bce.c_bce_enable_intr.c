
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bce_softc {int last_status_idx; int hc_command; } ;


 int BCE_HC_COMMAND ;
 int BCE_HC_COMMAND_COAL_NOW ;
 int BCE_PCICFG_INT_ACK_CMD ;
 int BCE_PCICFG_INT_ACK_CMD_INDEX_VALID ;
 int BCE_PCICFG_INT_ACK_CMD_MASK_INT ;
 int BCE_VERBOSE_INTR ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int REG_WR (struct bce_softc*,int ,int) ;

__attribute__((used)) static void
bce_enable_intr(struct bce_softc *sc, int coal_now)
{
 DBENTER(BCE_VERBOSE_INTR);

 REG_WR(sc, BCE_PCICFG_INT_ACK_CMD,
     BCE_PCICFG_INT_ACK_CMD_INDEX_VALID |
     BCE_PCICFG_INT_ACK_CMD_MASK_INT | sc->last_status_idx);

 REG_WR(sc, BCE_PCICFG_INT_ACK_CMD,
     BCE_PCICFG_INT_ACK_CMD_INDEX_VALID | sc->last_status_idx);


 if (coal_now)
  REG_WR(sc, BCE_HC_COMMAND, sc->hc_command | BCE_HC_COMMAND_COAL_NOW);

 DBEXIT(BCE_VERBOSE_INTR);
}
