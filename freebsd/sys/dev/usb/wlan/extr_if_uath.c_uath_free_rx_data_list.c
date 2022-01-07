
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int sc_rx; } ;


 int UATH_RX_DATA_LIST_COUNT ;
 int uath_free_data_list (struct uath_softc*,int ,int ,int) ;

__attribute__((used)) static void
uath_free_rx_data_list(struct uath_softc *sc)
{
 uath_free_data_list(sc, sc->sc_rx, UATH_RX_DATA_LIST_COUNT,
     1 );
}
