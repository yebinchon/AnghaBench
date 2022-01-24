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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC2(uint64_t *baseptr, uint64_t limit, uint64_t size,
			uint64_t *addr)
{
	uint64_t base;

	FUNC0((size & (size - 1)) == 0);	/* must be a power of 2 */

	base = FUNC1(*baseptr, size);

	if (base + size <= limit) {
		*addr = base;
		*baseptr = base + size;
		return (0);
	} else
		return (-1);
}