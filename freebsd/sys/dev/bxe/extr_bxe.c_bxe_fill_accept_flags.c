
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGE (struct bxe_softc*,char*,int) ;




 int ECORE_ACCEPT_ALL_MULTICAST ;
 int ECORE_ACCEPT_ALL_UNICAST ;
 int ECORE_ACCEPT_ANY_VLAN ;
 int ECORE_ACCEPT_BROADCAST ;
 int ECORE_ACCEPT_MULTICAST ;
 int ECORE_ACCEPT_UNICAST ;
 int ECORE_ACCEPT_UNMATCHED ;
 int IS_MF_SI (struct bxe_softc*) ;
 int bxe_set_bit (int ,unsigned long*) ;

__attribute__((used)) static int
bxe_fill_accept_flags(struct bxe_softc *sc,
                      uint32_t rx_mode,
                      unsigned long *rx_accept_flags,
                      unsigned long *tx_accept_flags)
{

    *rx_accept_flags = 0;
    *tx_accept_flags = 0;

    switch (rx_mode) {
    case 130:




        break;

    case 129:
        bxe_set_bit(ECORE_ACCEPT_UNICAST, rx_accept_flags);
        bxe_set_bit(ECORE_ACCEPT_MULTICAST, rx_accept_flags);
        bxe_set_bit(ECORE_ACCEPT_BROADCAST, rx_accept_flags);


        bxe_set_bit(ECORE_ACCEPT_UNICAST, tx_accept_flags);
        bxe_set_bit(ECORE_ACCEPT_MULTICAST, tx_accept_flags);
        bxe_set_bit(ECORE_ACCEPT_BROADCAST, tx_accept_flags);

        break;

    case 131:
        bxe_set_bit(ECORE_ACCEPT_UNICAST, rx_accept_flags);
        bxe_set_bit(ECORE_ACCEPT_ALL_MULTICAST, rx_accept_flags);
        bxe_set_bit(ECORE_ACCEPT_BROADCAST, rx_accept_flags);


        bxe_set_bit(ECORE_ACCEPT_UNICAST, tx_accept_flags);
        bxe_set_bit(ECORE_ACCEPT_ALL_MULTICAST, tx_accept_flags);
        bxe_set_bit(ECORE_ACCEPT_BROADCAST, tx_accept_flags);

        break;

    case 128:





        bxe_set_bit(ECORE_ACCEPT_UNMATCHED, rx_accept_flags);
        bxe_set_bit(ECORE_ACCEPT_UNICAST, rx_accept_flags);
        bxe_set_bit(ECORE_ACCEPT_ALL_MULTICAST, rx_accept_flags);
        bxe_set_bit(ECORE_ACCEPT_BROADCAST, rx_accept_flags);


        bxe_set_bit(ECORE_ACCEPT_ALL_MULTICAST, tx_accept_flags);
        bxe_set_bit(ECORE_ACCEPT_BROADCAST, tx_accept_flags);

        if (IS_MF_SI(sc)) {
            bxe_set_bit(ECORE_ACCEPT_ALL_UNICAST, tx_accept_flags);
        } else {
            bxe_set_bit(ECORE_ACCEPT_UNICAST, tx_accept_flags);
        }

        break;

    default:
        BLOGE(sc, "Unknown rx_mode (0x%x)\n", rx_mode);
        return (-1);
    }


    if (rx_mode != 130) {
        bxe_set_bit(ECORE_ACCEPT_ANY_VLAN, rx_accept_flags);
        bxe_set_bit(ECORE_ACCEPT_ANY_VLAN, tx_accept_flags);
    }

    return (0);
}
