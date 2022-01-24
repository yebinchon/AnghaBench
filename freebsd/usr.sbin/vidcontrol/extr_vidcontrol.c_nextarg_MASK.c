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
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static char *
FUNC2(int ac, char **av, int *indp, int oc, int strict)
{
	if (*indp < ac)
		return(av[(*indp)++]);

	if (strict != 0) {
		FUNC1();
		FUNC0(1, "option requires two arguments -- %c", oc);
	}

	return(NULL);
}