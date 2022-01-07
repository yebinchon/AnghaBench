
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ decode_buf; } ;
struct TYPE_5__ {TYPE_1__ mac_stats; } ;
struct sfxge_softc {TYPE_2__ port; } ;
struct ifnet {struct sfxge_softc* if_softc; } ;
typedef int ift_counter ;


 size_t EFX_MAC_RX_ERRORS ;
 size_t EFX_MAC_RX_OCTETS ;
 size_t EFX_MAC_RX_PKTS ;
 size_t EFX_MAC_TX_BRDCST_PKTS ;
 size_t EFX_MAC_TX_ERRORS ;
 size_t EFX_MAC_TX_EX_COL_PKTS ;
 size_t EFX_MAC_TX_LATE_COL_PKTS ;
 size_t EFX_MAC_TX_MULTICST_PKTS ;
 size_t EFX_MAC_TX_MULT_COL_PKTS ;
 size_t EFX_MAC_TX_OCTETS ;
 size_t EFX_MAC_TX_PKTS ;
 size_t EFX_MAC_TX_SGL_COL_PKTS ;
 int SFXGE_PORT_LOCK (TYPE_2__*) ;
 int SFXGE_PORT_UNLOCK (TYPE_2__*) ;
 scalar_t__ if_get_counter_default (struct ifnet*,int) ;
 int sfxge_mac_stat_update (struct sfxge_softc*) ;
 scalar_t__ sfxge_tx_get_drops (struct sfxge_softc*) ;

uint64_t
sfxge_get_counter(struct ifnet *ifp, ift_counter c)
{
 struct sfxge_softc *sc = ifp->if_softc;
 uint64_t *mac_stats;
 uint64_t val;

 SFXGE_PORT_LOCK(&sc->port);


 (void)sfxge_mac_stat_update(sc);

 mac_stats = (uint64_t *)sc->port.mac_stats.decode_buf;

 switch (c) {
 case 135:
  val = mac_stats[EFX_MAC_RX_PKTS];
  break;
 case 137:
  val = mac_stats[EFX_MAC_RX_ERRORS];
  break;
 case 129:
  val = mac_stats[EFX_MAC_TX_PKTS];
  break;
 case 131:
  val = mac_stats[EFX_MAC_TX_ERRORS];
  break;
 case 139:
  val = mac_stats[EFX_MAC_TX_SGL_COL_PKTS] +
        mac_stats[EFX_MAC_TX_MULT_COL_PKTS] +
        mac_stats[EFX_MAC_TX_EX_COL_PKTS] +
        mac_stats[EFX_MAC_TX_LATE_COL_PKTS];
  break;
 case 138:
  val = mac_stats[EFX_MAC_RX_OCTETS];
  break;
 case 132:
  val = mac_stats[EFX_MAC_TX_OCTETS];
  break;
 case 130:
  val = mac_stats[EFX_MAC_TX_MULTICST_PKTS] +
        mac_stats[EFX_MAC_TX_BRDCST_PKTS];
  break;
 case 128:
  SFXGE_PORT_UNLOCK(&sc->port);
  return (sfxge_tx_get_drops(sc));
 case 136:

 case 134:

 case 133:

 default:
  SFXGE_PORT_UNLOCK(&sc->port);
  return (if_get_counter_default(ifp, c));
 }

 SFXGE_PORT_UNLOCK(&sc->port);

 return (val);
}
