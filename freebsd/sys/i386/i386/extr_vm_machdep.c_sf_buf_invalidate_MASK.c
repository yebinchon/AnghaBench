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
typedef  int /*<<< orphan*/  vm_page_t ;
struct sf_buf {scalar_t__ kva; int /*<<< orphan*/  m; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(struct sf_buf *sf)
{
	vm_page_t m = sf->m;

	/*
	 * Use pmap_qenter to update the pte for
	 * existing mapping, in particular, the PAT
	 * settings are recalculated.
	 */
	FUNC1(sf->kva, &m, 1);
	FUNC0(sf->kva, sf->kva + PAGE_SIZE);
}