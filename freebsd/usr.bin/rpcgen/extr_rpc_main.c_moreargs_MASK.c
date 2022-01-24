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
 int INT_MAX ; 
 char** arglist ; 
 int argmax ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char** FUNC2 (char**,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	char **newarglist;

	argmax = argmax == 0 ? 32 : argmax << 1;
	if (argmax > INT_MAX / 4) {
		FUNC3("refusing to allocate too many arguments");
		FUNC0();
	}
	newarglist = FUNC2(arglist, argmax * sizeof(*arglist));
	if (newarglist == NULL) {
		FUNC3("unable to allocate arglist");
		FUNC0();
	}
	FUNC1(arglist);
	arglist = newarglist;
}