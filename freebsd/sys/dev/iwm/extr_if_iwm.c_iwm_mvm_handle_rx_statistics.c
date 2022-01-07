
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwm_softc {int sc_noise; int sc_stats; } ;
struct iwm_rx_packet {int data; } ;
struct TYPE_2__ {int general; } ;
struct iwm_notif_statistics_v10 {TYPE_1__ rx; } ;


 int iwm_get_noise (struct iwm_softc*,int *) ;
 int memcpy (int *,struct iwm_notif_statistics_v10*,int) ;

__attribute__((used)) static void
iwm_mvm_handle_rx_statistics(struct iwm_softc *sc, struct iwm_rx_packet *pkt)
{
 struct iwm_notif_statistics_v10 *stats = (void *)&pkt->data;

 memcpy(&sc->sc_stats, stats, sizeof(sc->sc_stats));
 sc->sc_noise = iwm_get_noise(sc, &stats->rx.general);
}
