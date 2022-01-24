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
 char* FUNC1 (char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(int ac, const char **av,
			const char *prefix, int prefix_length)
{
	int i;
	int err = 0;

	/* Read HEAD and MERGE_HEAD; if MERGE_HEAD does not exist, we
	 * are not doing a merge, so exit with success status.
	 */
	FUNC2();

	for (i = 1; i < ac; i++) {
		const char *arg = av[i];
		char *p = FUNC1(prefix, prefix_length, arg);
		err |= FUNC3(p);
		FUNC0(p);
	}
	return err;
}