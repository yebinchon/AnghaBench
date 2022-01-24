#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int) ; 
#define  BXE_RX_MODE_ALLMULTI 131 
#define  BXE_RX_MODE_NONE 130 
#define  BXE_RX_MODE_NORMAL 129 
#define  BXE_RX_MODE_PROMISC 128 
 int /*<<< orphan*/  ECORE_ACCEPT_ALL_MULTICAST ; 
 int /*<<< orphan*/  ECORE_ACCEPT_ALL_UNICAST ; 
 int /*<<< orphan*/  ECORE_ACCEPT_ANY_VLAN ; 
 int /*<<< orphan*/  ECORE_ACCEPT_BROADCAST ; 
 int /*<<< orphan*/  ECORE_ACCEPT_MULTICAST ; 
 int /*<<< orphan*/  ECORE_ACCEPT_UNICAST ; 
 int /*<<< orphan*/  ECORE_ACCEPT_UNMATCHED ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int
FUNC3(struct bxe_softc *sc,
                      uint32_t         rx_mode,
                      unsigned long    *rx_accept_flags,
                      unsigned long    *tx_accept_flags)
{
    /* Clear the flags first */
    *rx_accept_flags = 0;
    *tx_accept_flags = 0;

    switch (rx_mode) {
    case BXE_RX_MODE_NONE:
        /*
         * 'drop all' supersedes any accept flags that may have been
         * passed to the function.
         */
        break;

    case BXE_RX_MODE_NORMAL:
        FUNC2(ECORE_ACCEPT_UNICAST, rx_accept_flags);
        FUNC2(ECORE_ACCEPT_MULTICAST, rx_accept_flags);
        FUNC2(ECORE_ACCEPT_BROADCAST, rx_accept_flags);

        /* internal switching mode */
        FUNC2(ECORE_ACCEPT_UNICAST, tx_accept_flags);
        FUNC2(ECORE_ACCEPT_MULTICAST, tx_accept_flags);
        FUNC2(ECORE_ACCEPT_BROADCAST, tx_accept_flags);

        break;

    case BXE_RX_MODE_ALLMULTI:
        FUNC2(ECORE_ACCEPT_UNICAST, rx_accept_flags);
        FUNC2(ECORE_ACCEPT_ALL_MULTICAST, rx_accept_flags);
        FUNC2(ECORE_ACCEPT_BROADCAST, rx_accept_flags);

        /* internal switching mode */
        FUNC2(ECORE_ACCEPT_UNICAST, tx_accept_flags);
        FUNC2(ECORE_ACCEPT_ALL_MULTICAST, tx_accept_flags);
        FUNC2(ECORE_ACCEPT_BROADCAST, tx_accept_flags);

        break;

    case BXE_RX_MODE_PROMISC:
        /*
         * According to deffinition of SI mode, iface in promisc mode
         * should receive matched and unmatched (in resolution of port)
         * unicast packets.
         */
        FUNC2(ECORE_ACCEPT_UNMATCHED, rx_accept_flags);
        FUNC2(ECORE_ACCEPT_UNICAST, rx_accept_flags);
        FUNC2(ECORE_ACCEPT_ALL_MULTICAST, rx_accept_flags);
        FUNC2(ECORE_ACCEPT_BROADCAST, rx_accept_flags);

        /* internal switching mode */
        FUNC2(ECORE_ACCEPT_ALL_MULTICAST, tx_accept_flags);
        FUNC2(ECORE_ACCEPT_BROADCAST, tx_accept_flags);

        if (FUNC1(sc)) {
            FUNC2(ECORE_ACCEPT_ALL_UNICAST, tx_accept_flags);
        } else {
            FUNC2(ECORE_ACCEPT_UNICAST, tx_accept_flags);
        }

        break;

    default:
        FUNC0(sc, "Unknown rx_mode (0x%x)\n", rx_mode);
        return (-1);
    }

    /* Set ACCEPT_ANY_VLAN as we do not enable filtering by VLAN */
    if (rx_mode != BXE_RX_MODE_NONE) {
        FUNC2(ECORE_ACCEPT_ANY_VLAN, rx_accept_flags);
        FUNC2(ECORE_ACCEPT_ANY_VLAN, tx_accept_flags);
    }

    return (0);
}