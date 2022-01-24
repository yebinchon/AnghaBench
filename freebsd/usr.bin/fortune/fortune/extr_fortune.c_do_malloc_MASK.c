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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void *
FUNC3(unsigned int size)
{
	void *new;

	if ((new = FUNC2(size)) == NULL) {
		(void) FUNC1(stderr, "fortune: out of memory.\n");
		FUNC0(1);
	}

	return (new);
}