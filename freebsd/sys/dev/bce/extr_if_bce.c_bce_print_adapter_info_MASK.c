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
struct bce_softc {int bce_flags; int link_width; int link_speed; int bus_speed_mhz; char* bce_bc_ver; int rx_pages; int tx_pages; int pg_pages; int bce_phy_flags; char* bce_mfw_ver; int bce_rx_quick_cons_trip_int; int bce_rx_quick_cons_trip; int bce_rx_ticks_int; int bce_rx_ticks; int bce_tx_quick_cons_trip_int; int bce_tx_quick_cons_trip; int bce_tx_ticks_int; int bce_tx_ticks; int /*<<< orphan*/  bce_chipid; } ;

/* Variables and functions */
 int FUNC0 (struct bce_softc*) ; 
 int BCE_MFW_ENABLE_FLAG ; 
 int BCE_PCIE_FLAG ; 
 int BCE_PCIX_FLAG ; 
 int BCE_PCI_32BIT_FLAG ; 
 int BCE_PHY_2_5G_CAPABLE_FLAG ; 
 int BCE_PHY_REMOTE_CAP_FLAG ; 
 int BCE_PHY_REMOTE_PORT_FIBER_FLAG ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int BCE_USING_MSIX_FLAG ; 
 int BCE_USING_MSI_FLAG ; 
 int /*<<< orphan*/  BCE_VERBOSE_LOAD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 scalar_t__ bce_hdr_split ; 
 scalar_t__ bce_verbose ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5(struct bce_softc *sc)
{
	int i = 0;

	FUNC2(BCE_VERBOSE_LOAD);

	if (bce_verbose || bootverbose) {
		FUNC1("ASIC (0x%08X); ", sc->bce_chipid);
		FUNC4("Rev (%c%d); ", ((FUNC0(sc) & 0xf000) >>
		    12) + 'A', ((FUNC0(sc) & 0x0ff0) >> 4));


		/* Bus info. */
		if (sc->bce_flags & BCE_PCIE_FLAG) {
			FUNC4("Bus (PCIe x%d, ", sc->link_width);
			switch (sc->link_speed) {
			case 1: FUNC4("2.5Gbps); "); break;
			case 2:	FUNC4("5Gbps); "); break;
			default: FUNC4("Unknown link speed); ");
			}
		} else {
			FUNC4("Bus (PCI%s, %s, %dMHz); ",
			    ((sc->bce_flags & BCE_PCIX_FLAG) ? "-X" : ""),
			    ((sc->bce_flags & BCE_PCI_32BIT_FLAG) ?
			    "32-bit" : "64-bit"), sc->bus_speed_mhz);
		}

		/* Firmware version and device features. */
		FUNC4("B/C (%s); Bufs (RX:%d;TX:%d;PG:%d); Flags (",
		    sc->bce_bc_ver,	sc->rx_pages, sc->tx_pages,
		    (bce_hdr_split == TRUE ? sc->pg_pages: 0));

		if (bce_hdr_split == TRUE) {
			FUNC4("SPLT");
			i++;
		}

		if (sc->bce_flags & BCE_USING_MSI_FLAG) {
			if (i > 0) FUNC4("|");
			FUNC4("MSI"); i++;
		}

		if (sc->bce_flags & BCE_USING_MSIX_FLAG) {
			if (i > 0) FUNC4("|");
			FUNC4("MSI-X"); i++;
		}

		if (sc->bce_phy_flags & BCE_PHY_2_5G_CAPABLE_FLAG) {
			if (i > 0) FUNC4("|");
			FUNC4("2.5G"); i++;
		}

		if (sc->bce_phy_flags & BCE_PHY_REMOTE_CAP_FLAG) {
			if (i > 0) FUNC4("|");
			FUNC4("Remote PHY(%s)",
			    sc->bce_phy_flags & BCE_PHY_REMOTE_PORT_FIBER_FLAG ?
			    "FIBER" : "TP"); i++;
		}

		if (sc->bce_flags & BCE_MFW_ENABLE_FLAG) {
			if (i > 0) FUNC4("|");
			FUNC4("MFW); MFW (%s)\n", sc->bce_mfw_ver);
		} else {
			FUNC4(")\n");
		}

		FUNC4("Coal (RX:%d,%d,%d,%d; TX:%d,%d,%d,%d)\n",
		    sc->bce_rx_quick_cons_trip_int,
		    sc->bce_rx_quick_cons_trip,
		    sc->bce_rx_ticks_int,
		    sc->bce_rx_ticks,
		    sc->bce_tx_quick_cons_trip_int,
		    sc->bce_tx_quick_cons_trip,
		    sc->bce_tx_ticks_int,
		    sc->bce_tx_ticks);

	}

	FUNC3(BCE_VERBOSE_LOAD);
}