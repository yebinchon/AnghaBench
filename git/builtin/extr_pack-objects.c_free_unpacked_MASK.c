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
struct unpacked {scalar_t__ depth; int /*<<< orphan*/ * entry; scalar_t__ data; int /*<<< orphan*/ * index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC4(struct unpacked *n)
{
	unsigned long freed_mem = FUNC3(n->index);
	FUNC2(n->index);
	n->index = NULL;
	if (n->data) {
		freed_mem += FUNC1(n->entry);
		FUNC0(n->data);
	}
	n->entry = NULL;
	n->depth = 0;
	return freed_mem;
}