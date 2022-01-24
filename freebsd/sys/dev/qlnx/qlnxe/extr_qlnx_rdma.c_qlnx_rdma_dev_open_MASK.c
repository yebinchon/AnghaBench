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
struct qlnx_host {scalar_t__ personality; int /*<<< orphan*/  qlnx_rdma; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* notify ) (struct qlnx_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ ECORE_PCI_ETH_IWARP ; 
 scalar_t__ ECORE_PCI_ETH_ROCE ; 
 int /*<<< orphan*/  QLNX_ETHDEV_UP ; 
 int /*<<< orphan*/  FUNC0 (struct qlnx_host*,char*,struct qlnx_host*,TYPE_1__*) ; 
 TYPE_1__* qlnx_rdma_if ; 
 int /*<<< orphan*/  FUNC1 (struct qlnx_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct qlnx_host *ha)
{
	FUNC0(ha, "enter ha = %p qlnx_rdma_if = %p\n", ha, qlnx_rdma_if);

	if (qlnx_rdma_if == NULL)
		return;

	if (ha->personality != ECORE_PCI_ETH_IWARP && 
		ha->personality != ECORE_PCI_ETH_ROCE)
		return;

	qlnx_rdma_if->notify(ha, ha->qlnx_rdma, QLNX_ETHDEV_UP);

	FUNC0(ha, "exit ha = %p qlnx_rdma_if = %p\n", ha, qlnx_rdma_if);
	return;
}