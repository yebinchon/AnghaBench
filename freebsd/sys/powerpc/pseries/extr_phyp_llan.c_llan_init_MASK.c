#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct llan_softc {int rx_valid_val; int rx_buf_len; int rx_buf_phys; int /*<<< orphan*/  io_lock; TYPE_1__* ifp; int /*<<< orphan*/  unit; int /*<<< orphan*/ * rx_xfer; int /*<<< orphan*/  filter_buf_phys; int /*<<< orphan*/  input_buf_phys; int /*<<< orphan*/  mac_address; scalar_t__ rx_dma_slot; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  H_FREE_LOGICAL_LAN ; 
 int /*<<< orphan*/  H_REGISTER_LOGICAL_LAN ; 
 int /*<<< orphan*/  H_VIO_SIGNAL ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int LLAN_BUFDESC_VALID ; 
 int LLAN_MAX_RX_PACKETS ; 
 int /*<<< orphan*/  FUNC0 (struct llan_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct llan_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC6(void *xsc)
{
	struct llan_softc *sc = xsc;
	uint64_t rx_buf_desc;
	uint64_t macaddr;
	int err, i;

	FUNC3(&sc->io_lock);

	FUNC5(H_FREE_LOGICAL_LAN, sc->unit);

	/* Create buffers (page 539) */
	sc->rx_dma_slot = 0;
	sc->rx_valid_val = 1;

	rx_buf_desc = LLAN_BUFDESC_VALID;
	rx_buf_desc |= (sc->rx_buf_len << 32);
	rx_buf_desc |= sc->rx_buf_phys;
	FUNC2(&macaddr, sc->mac_address, 8);
	err = FUNC5(H_REGISTER_LOGICAL_LAN, sc->unit, sc->input_buf_phys,
	    rx_buf_desc, sc->filter_buf_phys, macaddr);

	for (i = 0; i < LLAN_MAX_RX_PACKETS; i++)
		FUNC0(sc, &sc->rx_xfer[i]);

	FUNC5(H_VIO_SIGNAL, sc->unit, 1); /* Enable interrupts */

	/* Tell stack we're up */
	sc->ifp->if_drv_flags |= IFF_DRV_RUNNING;
	sc->ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

	FUNC4(&sc->io_lock);

	/* Check for pending receives scheduled before interrupt enable */
	FUNC1(sc);
}