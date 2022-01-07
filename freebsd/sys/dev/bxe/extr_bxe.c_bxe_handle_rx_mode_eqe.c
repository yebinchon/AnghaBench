
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union event_ring_elem {int dummy; } event_ring_elem ;
struct bxe_softc {int sp_state; } ;


 int ECORE_FILTER_RX_MODE_PENDING ;
 int ECORE_FILTER_RX_MODE_SCHED ;
 int bxe_clear_bit (int ,int *) ;
 int bxe_set_storm_rx_mode (struct bxe_softc*) ;
 scalar_t__ bxe_test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
bxe_handle_rx_mode_eqe(struct bxe_softc *sc,
                       union event_ring_elem *elem)
{
    bxe_clear_bit(ECORE_FILTER_RX_MODE_PENDING, &sc->sp_state);


    if (bxe_test_and_clear_bit(ECORE_FILTER_RX_MODE_SCHED,
                               &sc->sp_state)) {
        bxe_set_storm_rx_mode(sc);
    }
}
