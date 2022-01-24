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
struct stat {int st_mode; } ;
struct printer {char* printer; } ;

/* Variables and functions */
 int LFM_PRINT_DIS ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  generic_msg ; 
 int /*<<< orphan*/  FUNC0 (struct printer*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (struct printer*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct printer *pp)
{
	struct stat stbuf;
	int not_shown;
	char lf[MAXPATHLEN];

	FUNC0(pp, lf, sizeof lf);
	FUNC1("%s:\n", pp->printer);

	FUNC3(pp, generic_msg, 1);

	/*
	 * Warn the user if 'lpq' will not display this new status-message.
	 * Note that if lock file does not exist, then the queue is enabled
	 * for both queuing and printing.
	 */
	not_shown = 1;
	if (FUNC2(lf, &stbuf) >= 0) {
		if (stbuf.st_mode & LFM_PRINT_DIS)
			not_shown = 0;
	}
	if (not_shown) {
		FUNC1("\tnote: This queue currently has printing enabled,\n");
		FUNC1("\t    so this -msg will only be shown by 'lpq' if\n");
		FUNC1("\t    a job is actively printing on it.\n");
	}
}