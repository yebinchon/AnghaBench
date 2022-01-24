#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qla_tx_buf_t ;
struct TYPE_7__ {int num_tx_rings; } ;
struct TYPE_8__ {TYPE_1__* tx_ring; TYPE_2__ hw; int /*<<< orphan*/ * tx_tag; } ;
typedef  TYPE_3__ qla_host_t ;
struct TYPE_6__ {int /*<<< orphan*/ * tx_buf; } ;

/* Variables and functions */
 int NUM_TX_DESCRIPTORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(qla_host_t *ha)
{
	int		i, j;

	for (j = 0; j < ha->hw.num_tx_rings; j++) {
		for (i = 0; i < NUM_TX_DESCRIPTORS; i++)
			FUNC2(ha, &ha->tx_ring[j].tx_buf[i]);
	}

	if (ha->tx_tag != NULL) {
		FUNC0(ha->tx_tag);
		ha->tx_tag = NULL;
	}

	for (i = 0; i < ha->hw.num_tx_rings; i++) {
		FUNC1((void *)ha->tx_ring[i].tx_buf,
			(sizeof(qla_tx_buf_t) * NUM_TX_DESCRIPTORS));
	}
	return;
}