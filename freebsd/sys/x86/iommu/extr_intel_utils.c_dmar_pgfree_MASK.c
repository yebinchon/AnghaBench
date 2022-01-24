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
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_t ;

/* Variables and functions */
 int DMAR_PGF_OBJL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dmar_tbl_pagecnt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(vm_object_t obj, vm_pindex_t idx, int flags)
{
	vm_page_t m;

	if ((flags & DMAR_PGF_OBJL) == 0)
		FUNC0(obj);
	m = FUNC4(obj, idx);
	if (m != NULL) {
		FUNC3(m);
		FUNC2(&dmar_tbl_pagecnt, 1);
	}
	if ((flags & DMAR_PGF_OBJL) == 0)
		FUNC1(obj);
}