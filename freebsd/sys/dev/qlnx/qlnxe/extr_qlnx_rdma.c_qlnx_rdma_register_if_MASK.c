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
typedef  int /*<<< orphan*/  qlnx_rdma_if_t ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* qlnx_host_list ; 
 int /*<<< orphan*/  qlnx_rdma_dev_lock ; 
 int /*<<< orphan*/ * qlnx_rdma_if ; 

int
FUNC4(qlnx_rdma_if_t *rdma_if)
{
	qlnx_host_t *ha;

	if (FUNC1(&qlnx_rdma_dev_lock)) {

		FUNC2(&qlnx_rdma_dev_lock);
		qlnx_rdma_if = rdma_if;

		ha = qlnx_host_list;

		while (ha != NULL) {
			FUNC0(ha);
			ha = ha->next;
		}

		FUNC3(&qlnx_rdma_dev_lock);

		return (0);
	}

	return (-1);
}