
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwm_softc {TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ mqrx_supported; } ;


 int iwm_nic_rx_legacy_init (struct iwm_softc*) ;
 int iwm_nic_rx_mq_init (struct iwm_softc*) ;

__attribute__((used)) static int
iwm_nic_rx_init(struct iwm_softc *sc)
{
 if (sc->cfg->mqrx_supported)
  return iwm_nic_rx_mq_init(sc);
 else
  return iwm_nic_rx_legacy_init(sc);
}
