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
 void* MAP_FAILED ; 
 int MAP_FIXED ; 
 int MAP_SHARED ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (void*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void *
FUNC3(void *fdp)
{
	void *addr;
	int fd = *(int *)fdp;

	if ((addr =
	    FUNC1(0, 8192, PROT_READ, MAP_SHARED, fd, 0)) == MAP_FAILED) {
		FUNC2("mmap");
		FUNC0(1);
	}
	for (;;) {
		if (FUNC1(addr, 8192, PROT_READ,
		    MAP_SHARED|MAP_FIXED, fd, 0) == MAP_FAILED) {
			FUNC2("mmap");
			FUNC0(1);
		}
	}
	/* NOTREACHED */
	return ((void *)1);
}