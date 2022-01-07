
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ath_softc {int sc_ah; } ;


 int AH_FALSE ;
 int AH_TRUE ;
 int MCI_GPM ;
 int ath_hal_btcoex_mci_send_message (int ,int ,int ,int *,int,int ,int ) ;

__attribute__((used)) static void
ath_btcoex_mci_send_gpm(struct ath_softc *sc, uint32_t *payload)
{

 ath_hal_btcoex_mci_send_message(sc->sc_ah, MCI_GPM, 0, payload, 16,
     AH_FALSE, AH_TRUE);
}
