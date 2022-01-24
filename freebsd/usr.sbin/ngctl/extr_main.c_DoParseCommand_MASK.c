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
 int FUNC0 (int,char**) ; 
 int MAX_ARGS ; 
 int /*<<< orphan*/  WHITESPACE ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const char *line)
{
	char *av[MAX_ARGS];
	int ac;

	/* Parse line */
	for (ac = 0, av[0] = FUNC1((char *)line, WHITESPACE);
	    ac < MAX_ARGS - 1 && av[ac];
	    av[++ac] = FUNC1(NULL, WHITESPACE));

	/* Do command */
	return (FUNC0(ac, av));
}