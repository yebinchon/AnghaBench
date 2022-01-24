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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int u_int ;
struct schizo_softc {int /*<<< orphan*/  sc_dev; } ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct schizo_softc*,scalar_t__) ; 
 int STX_MAX_INO ; 
 scalar_t__ STX_PCI_ICLR_BASE ; 
 scalar_t__ STX_PCI_IMAP_BASE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int
FUNC3(struct schizo_softc *sc, u_int ino,
    bus_addr_t *intrmapptr, bus_addr_t *intrclrptr)
{
	bus_addr_t intrclr, intrmap;
	uint64_t mr;

	/*
	 * XXX we only look for INOs rather than INRs since the firmware
	 * may not provide the IGN and the IGN is constant for all devices
	 * on that PCI controller.
	 */

	if (ino > STX_MAX_INO) {
		FUNC2(sc->sc_dev, "out of range INO %d requested\n",
		    ino);
		return (0);
	}

	intrmap = STX_PCI_IMAP_BASE + (ino << 3);
	intrclr = STX_PCI_ICLR_BASE + (ino << 3);
	mr = FUNC1(sc, intrmap);
	if (FUNC0(mr) != ino) {
		FUNC2(sc->sc_dev,
		    "interrupt map entry does not match INO (%d != %d)\n",
		    (int)FUNC0(mr), ino);
		return (0);
	}

	if (intrmapptr != NULL)
		*intrmapptr = intrmap;
	if (intrclrptr != NULL)
		*intrclrptr = intrclr;
	return (1);
}