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
 int /*<<< orphan*/  DEFAULT_IQN ; 
 size_t _POSIX_HOST_NAME_MAX ; 
 char* FUNC0 (int,size_t) ; 
 int FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

__attribute__((used)) static char *
FUNC5(void)
{
	char *name;
	size_t namelen;
	int error;

	namelen = _POSIX_HOST_NAME_MAX + FUNC3(DEFAULT_IQN);

	name = FUNC0(1, namelen + 1);
	if (name == NULL)
		FUNC4(1, "calloc");
	FUNC2(name, DEFAULT_IQN);
	error = FUNC1(name + FUNC3(DEFAULT_IQN),
	    namelen - FUNC3(DEFAULT_IQN));
	if (error != 0)
		FUNC4(1, "gethostname");

	return (name);
}