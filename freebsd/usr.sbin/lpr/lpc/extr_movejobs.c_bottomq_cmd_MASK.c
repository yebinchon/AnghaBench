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
 int /*<<< orphan*/  IS_BOTQ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char**,int /*<<< orphan*/ ) ; 

void
FUNC2(int argc, char *argv[])
{

	if (argc < 3) {
		FUNC0("usage: bottomq printer [jobspec ...]\n");
		return;
	}
	--argc;			/* First argv was the command name */
	++argv;

	FUNC1(argc, argv, IS_BOTQ);
}