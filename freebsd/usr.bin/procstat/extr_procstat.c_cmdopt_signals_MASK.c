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
 int /*<<< orphan*/  PS_OPT_SIGNUM ; 
 int FUNC0 (int,char* const*,char*) ; 
 int /*<<< orphan*/  procstat_opts ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(int argc, char * const argv[])
{
	int ch;

	while ((ch = FUNC0(argc, argv, "n")) != -1) {
		switch (ch) {
		case 'n':
			procstat_opts |= PS_OPT_SIGNUM;
			break;
		case '?':
		default:
			FUNC1();
		}
	}
}