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
typedef  int /*<<< orphan*/  vm_paddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*) ; 

__attribute__((used)) static void
FUNC2(char *list, char *end)
{
	vm_paddr_t pa;
	char *next;

	next = list;
	while (next != NULL) {
		if ((pa = FUNC1(&next, end)) == 0)
			continue;
		FUNC0(pa, bootverbose);
	}
}