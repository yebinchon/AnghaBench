#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qla_tx_buf_t ;
struct TYPE_4__ {int /*<<< orphan*/ * tx_buf; int /*<<< orphan*/ * tx_tag; } ;
typedef  TYPE_1__ qla_host_t ;

/* Variables and functions */
 int NUM_TX_DESCRIPTORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(qla_host_t *ha)
{
	int		i;

	for (i = 0; i < NUM_TX_DESCRIPTORS; i++)
		FUNC2(ha, &ha->tx_buf[i]);

	if (ha->tx_tag != NULL) {
		FUNC0(ha->tx_tag);
		ha->tx_tag = NULL;
	}
	FUNC1((void *)ha->tx_buf, (sizeof(qla_tx_buf_t) * NUM_TX_DESCRIPTORS));

	return;
}