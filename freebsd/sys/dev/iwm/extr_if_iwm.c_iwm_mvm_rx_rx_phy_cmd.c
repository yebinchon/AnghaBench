
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int sc_last_phy_info; } ;
struct iwm_rx_phy_info {int dummy; } ;
struct iwm_rx_packet {scalar_t__ data; } ;


 int IWM_DEBUG_RECV ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*) ;
 int memcpy (int *,struct iwm_rx_phy_info*,int) ;

__attribute__((used)) static void
iwm_mvm_rx_rx_phy_cmd(struct iwm_softc *sc, struct iwm_rx_packet *pkt)
{
 struct iwm_rx_phy_info *phy_info = (void *)pkt->data;

 IWM_DPRINTF(sc, IWM_DEBUG_RECV, "received PHY stats\n");

 memcpy(&sc->sc_last_phy_info, phy_info, sizeof(sc->sc_last_phy_info));
}
