#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  num_tx_rings; int /*<<< orphan*/  num_rx_rings; int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_1__ qla_host_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  MAX_RX_RINGS ; 
 int /*<<< orphan*/  MAX_TX_RINGS ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qls_syctl_link_status ; 
 int /*<<< orphan*/  qls_syctl_mpi_dump ; 

void
FUNC5(qla_host_t *ha)
{
        device_t	dev;

        dev = ha->pci_dev;

	ha->num_rx_rings = MAX_RX_RINGS; ha->num_tx_rings = MAX_TX_RINGS;

	FUNC1(FUNC3(dev),
		FUNC2(FUNC4(dev)),
		OID_AUTO, "num_rx_rings", CTLFLAG_RD, &ha->num_rx_rings,
		ha->num_rx_rings, "Number of Completion Queues");

        FUNC1(FUNC3(dev),
                FUNC2(FUNC4(dev)),
                OID_AUTO, "num_tx_rings", CTLFLAG_RD, &ha->num_tx_rings,
		ha->num_tx_rings, "Number of Transmit Rings");

        FUNC0(FUNC3(dev),
                FUNC2(FUNC4(dev)),
                OID_AUTO, "mpi_dump", CTLTYPE_INT | CTLFLAG_RW,
                (void *)ha, 0,
                qls_syctl_mpi_dump, "I", "MPI Dump");

        FUNC0(FUNC3(dev),
                FUNC2(FUNC4(dev)),
                OID_AUTO, "link_status", CTLTYPE_INT | CTLFLAG_RW,
                (void *)ha, 0,
                qls_syctl_link_status, "I", "Link Status");
}