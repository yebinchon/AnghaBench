
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urtw_softc {int sc_rx; } ;


 int URTW_RX_DATA_LIST_COUNT ;
 int urtw_free_data_list (struct urtw_softc*,int ,int ,int) ;

__attribute__((used)) static void
urtw_free_rx_data_list(struct urtw_softc *sc)
{
 urtw_free_data_list(sc, sc->sc_rx, URTW_RX_DATA_LIST_COUNT, 1);
}
