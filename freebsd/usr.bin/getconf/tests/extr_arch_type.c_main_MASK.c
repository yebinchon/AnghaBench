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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC4(void)
{
	bool known_arch_type;

	known_arch_type = false;
#ifdef	__LP64__
	FUNC3("LP64\n");
	known_arch_type = true;
#endif
#ifdef	__LP32__
	printf("LP32\n");
	known_arch_type = true;
#endif
#ifdef	__ILP32__
	printf("ILP32\n");
	known_arch_type = true;
#endif

	if (known_arch_type)
		FUNC1(0);

	FUNC2(stderr, "unknown architecture type detected\n");
	FUNC0(0);
}