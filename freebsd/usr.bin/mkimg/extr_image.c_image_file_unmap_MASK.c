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

/* Variables and functions */
 int /*<<< orphan*/  MADV_DONTNEED ; 
 size_t image_swap_pgsz ; 
 scalar_t__ FUNC0 (void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 
 size_t secsz ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(void *buffer, size_t sz)
{
	size_t unit;

	unit = (secsz > image_swap_pgsz) ? secsz : image_swap_pgsz;
	sz = (sz + unit - 1) & ~(unit - 1);
	if (FUNC0(buffer, sz, MADV_DONTNEED) != 0)
		FUNC2("madvise");
	FUNC1(buffer, sz);
	return (0);
}