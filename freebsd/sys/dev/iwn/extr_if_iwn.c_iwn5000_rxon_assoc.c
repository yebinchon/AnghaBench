
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {struct iwn_rxon* rxon; } ;
struct iwn_rxon {int acquisition; int rxchain; int ht_triple_mask; int ht_dual_mask; int ht_single_mask; int cck_mask; int ofdm_mask; int filter; int flags; } ;
struct iwn5000_rxon_assoc {scalar_t__ reserved3; int acquisition; int rxchain; scalar_t__ reserved2; int ht_triple_mask; int ht_dual_mask; int ht_single_mask; scalar_t__ reserved1; int cck_mask; int ofdm_mask; int filter; int flags; } ;
typedef int cmd ;


 int IWN_CMD_RXON_ASSOC ;
 int iwn_cmd (struct iwn_softc*,int ,struct iwn5000_rxon_assoc*,int,int) ;

__attribute__((used)) static int
iwn5000_rxon_assoc(struct iwn_softc *sc, int async)
{
 struct iwn5000_rxon_assoc cmd;
 struct iwn_rxon *rxon = sc->rxon;

 cmd.flags = rxon->flags;
 cmd.filter = rxon->filter;
 cmd.ofdm_mask = rxon->ofdm_mask;
 cmd.cck_mask = rxon->cck_mask;
 cmd.reserved1 = 0;
 cmd.ht_single_mask = rxon->ht_single_mask;
 cmd.ht_dual_mask = rxon->ht_dual_mask;
 cmd.ht_triple_mask = rxon->ht_triple_mask;
 cmd.reserved2 = 0;
 cmd.rxchain = rxon->rxchain;
 cmd.acquisition = rxon->acquisition;
 cmd.reserved3 = 0;

 return (iwn_cmd(sc, IWN_CMD_RXON_ASSOC, &cmd, sizeof(cmd), async));
}
