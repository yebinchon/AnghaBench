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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char** kept ; 
 int kept_size ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(char *ptr)
{
	int i;

	/* first try to free old strings */
	for (i = 0; i < kept_size; i++) {
		if (!FUNC2(kept[i])) {
			kept_size--;
			FUNC0(kept[i]);
			if (i != kept_size) 
				kept[i] = kept[kept_size];
			i--;
		}
	}

	/* then deal with us */
	if (FUNC2(ptr))
		FUNC1(ptr);
	else
		FUNC0(ptr);
}