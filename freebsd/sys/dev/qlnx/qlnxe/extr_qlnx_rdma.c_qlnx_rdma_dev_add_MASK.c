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
struct qlnx_host {scalar_t__ personality; struct qlnx_host* next; } ;

/* Variables and functions */
 scalar_t__ ECORE_PCI_ETH_IWARP ; 
 scalar_t__ ECORE_PCI_ETH_ROCE ; 
 int /*<<< orphan*/  FUNC0 (struct qlnx_host*,char*,struct qlnx_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlnx_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct qlnx_host* qlnx_host_list ; 
 int /*<<< orphan*/  qlnx_rdma_dev_lock ; 

void
FUNC4(struct qlnx_host *ha)
{
	FUNC0(ha, "enter ha = %p\n", ha);

	if (ha->personality != ECORE_PCI_ETH_IWARP &&
			ha->personality != ECORE_PCI_ETH_ROCE)
		return;

	FUNC2(&qlnx_rdma_dev_lock);

	if (qlnx_host_list == NULL) {
		qlnx_host_list = ha;
		ha->next = NULL;
	} else {
		ha->next = qlnx_host_list;
		qlnx_host_list = ha;
	}

	FUNC3(&qlnx_rdma_dev_lock);

	FUNC1(ha);
	
	FUNC0(ha, "exit (%p)\n", ha);

	return;
}