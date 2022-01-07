
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bxe_softc {TYPE_1__* fp; int rx_mode; } ;
struct TYPE_2__ {int cl_id; } ;


 int RAMROD_RX ;
 int RAMROD_TX ;
 int bxe_fill_accept_flags (struct bxe_softc*,int ,unsigned long*,unsigned long*) ;
 int bxe_set_bit (int ,unsigned long*) ;
 int bxe_set_q_rx_mode (struct bxe_softc*,int ,unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static int
bxe_set_storm_rx_mode(struct bxe_softc *sc)
{
    unsigned long rx_mode_flags = 0, ramrod_flags = 0;
    unsigned long rx_accept_flags = 0, tx_accept_flags = 0;
    int rc;

    rc = bxe_fill_accept_flags(sc, sc->rx_mode, &rx_accept_flags,
                               &tx_accept_flags);
    if (rc) {
        return (rc);
    }

    bxe_set_bit(RAMROD_RX, &ramrod_flags);
    bxe_set_bit(RAMROD_TX, &ramrod_flags);


    return (bxe_set_q_rx_mode(sc, sc->fp[0].cl_id, rx_mode_flags,
                              rx_accept_flags, tx_accept_flags,
                              ramrod_flags));
}
