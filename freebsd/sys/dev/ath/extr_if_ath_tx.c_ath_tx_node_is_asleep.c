
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int dummy; } ;
struct ath_node {int an_is_powersave; } ;


 int ATH_TX_LOCK_ASSERT (struct ath_softc*) ;

int
ath_tx_node_is_asleep(struct ath_softc *sc, struct ath_node *an)
{

 ATH_TX_LOCK_ASSERT(sc);

 return (an->an_is_powersave);
}
