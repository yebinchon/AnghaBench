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
struct image_params {int /*<<< orphan*/ * firstpage; } ;

/* Variables and functions */
 int /*<<< orphan*/  PQ_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct image_params *imgp)
{
	vm_page_t m;

	if (imgp->firstpage != NULL) {
		m = FUNC1(imgp->firstpage);
		FUNC0(imgp->firstpage);
		imgp->firstpage = NULL;
		FUNC2(m, PQ_ACTIVE);
	}
}