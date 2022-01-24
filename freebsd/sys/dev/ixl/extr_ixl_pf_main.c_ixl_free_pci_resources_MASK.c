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
struct ixl_vsi {int num_rx_queues; int /*<<< orphan*/  ctx; int /*<<< orphan*/  irq; struct ixl_rx_queue* rx_queues; } ;
struct ixl_rx_queue {int /*<<< orphan*/  que_irq; } ;
struct ixl_pf {int /*<<< orphan*/ * pci_mem; struct ixl_vsi vsi; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct ixl_pf *pf)
{
	struct ixl_vsi		*vsi = &pf->vsi;
	device_t		dev = FUNC1(vsi->ctx);
	struct ixl_rx_queue	*rx_que = vsi->rx_queues;

	/* We may get here before stations are set up */
	if (rx_que == NULL)
		goto early;

	/*
	**  Release all MSI-X VSI resources:
	*/
	FUNC2(vsi->ctx, &vsi->irq);

	for (int i = 0; i < vsi->num_rx_queues; i++, rx_que++)
		FUNC2(vsi->ctx, &rx_que->que_irq);
early:
	if (pf->pci_mem != NULL)
		FUNC0(dev, SYS_RES_MEMORY,
		    FUNC3(pf->pci_mem), pf->pci_mem);
}