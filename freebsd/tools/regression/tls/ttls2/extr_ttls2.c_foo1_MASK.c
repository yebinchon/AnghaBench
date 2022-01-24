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
 int i ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void *
FUNC3(void *arg)
{
	FUNC0("thread %p, &i = %p\n", FUNC1(), &i);
	for (i = 0; i < 10; i++) {
		FUNC0("thread %p, i = %d\n", FUNC1(), i);
		FUNC2(1);
	}
	return (NULL);
}