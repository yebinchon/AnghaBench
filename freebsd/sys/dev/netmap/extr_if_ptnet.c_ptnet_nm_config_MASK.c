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
struct ptnet_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  iomem; } ;
struct nm_config_info {int /*<<< orphan*/  rx_buf_maxsize; void* num_rx_descs; void* num_tx_descs; void* num_rx_rings; void* num_tx_rings; } ;
struct netmap_adapter {int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  PTNET_IO_NUM_RX_RINGS ; 
 int /*<<< orphan*/  PTNET_IO_NUM_RX_SLOTS ; 
 int /*<<< orphan*/  PTNET_IO_NUM_TX_RINGS ; 
 int /*<<< orphan*/  PTNET_IO_NUM_TX_SLOTS ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*,void*,void*,void*,int /*<<< orphan*/ ) ; 
 struct ptnet_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct netmap_adapter *na, struct nm_config_info *info)
{
	struct ptnet_softc *sc = FUNC3(na->ifp);

	info->num_tx_rings = FUNC1(sc->iomem, PTNET_IO_NUM_TX_RINGS);
	info->num_rx_rings = FUNC1(sc->iomem, PTNET_IO_NUM_RX_RINGS);
	info->num_tx_descs = FUNC1(sc->iomem, PTNET_IO_NUM_TX_SLOTS);
	info->num_rx_descs = FUNC1(sc->iomem, PTNET_IO_NUM_RX_SLOTS);
	info->rx_buf_maxsize = FUNC0(na);

	FUNC2(sc->dev, "txr %u, rxr %u, txd %u, rxd %u, rxbufsz %u\n",
			info->num_tx_rings, info->num_rx_rings,
			info->num_tx_descs, info->num_rx_descs,
			info->rx_buf_maxsize);

	return 0;
}