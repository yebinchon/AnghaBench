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
struct TYPE_4__ {int num_rx_rings; int /*<<< orphan*/ * rx_tag; } ;
typedef  TYPE_1__ qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC2(qla_host_t *ha)
{
	int i;

	for (i = 0; i < ha->num_rx_rings; i++) {
		FUNC1(ha, i);
	}

        if (ha->rx_tag != NULL) {
                FUNC0(ha->rx_tag);
                ha->rx_tag = NULL;
        }

	return;
}