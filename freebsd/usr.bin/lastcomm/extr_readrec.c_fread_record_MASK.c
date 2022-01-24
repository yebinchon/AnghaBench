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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EFTYPE ; 
 int EOF ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (void*,int,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(void *ptr, size_t size, FILE *f)
{
	size_t rv;

	if ((rv = FUNC1(ptr, 1, size, f)) == size)
		return (0);
	else if (FUNC0(f) || rv == 0)
		return (EOF);
	else {
		/* Short read. */
		errno = EFTYPE;
		return (EOF);
	}
}