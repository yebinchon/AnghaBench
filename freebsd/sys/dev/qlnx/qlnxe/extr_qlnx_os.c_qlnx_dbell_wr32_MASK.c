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
typedef  scalar_t__ uint32_t ;
struct ecore_hwfn {scalar_t__ db_offset; scalar_t__ p_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  pci_dbells; } ;
typedef  TYPE_1__ qlnx_host_t ;
typedef  int /*<<< orphan*/  bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC1(void *hwfn, uint32_t reg_addr, uint32_t value)
{
	struct ecore_hwfn	*p_hwfn = hwfn;

	FUNC0(((qlnx_host_t *)p_hwfn->p_dev)->pci_dbells, \
		(bus_size_t)(p_hwfn->db_offset + reg_addr), value);

	return;
}