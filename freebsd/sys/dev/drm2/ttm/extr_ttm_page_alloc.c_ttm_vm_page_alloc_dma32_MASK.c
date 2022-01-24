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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vm_page_t
FUNC3(int req, vm_memattr_t memattr)
{
	vm_page_t p;
	int tries;

	for (tries = 0; ; tries++) {
		p = FUNC0(NULL, 0, req, 1, 0, 0xffffffff,
		    PAGE_SIZE, 0, memattr);
		if (p != NULL || tries > 2)
			return (p);
		if (!FUNC1(req, 1, 0, 0xffffffff,
		    PAGE_SIZE, 0))
			FUNC2(NULL);
	}
}