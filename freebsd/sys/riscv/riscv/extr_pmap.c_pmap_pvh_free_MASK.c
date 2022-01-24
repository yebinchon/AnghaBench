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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct md_page {int dummy; } ;
typedef  int /*<<< orphan*/ * pv_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct md_page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct md_page *pvh, pmap_t pmap, vm_offset_t va)
{
	pv_entry_t pv;

	pv = FUNC2(pvh, pmap, va);

	FUNC0(pv != NULL, ("pmap_pvh_free: pv not found for %#lx", va));
	FUNC1(pmap, pv);
}