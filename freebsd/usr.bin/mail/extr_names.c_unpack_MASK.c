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
struct name {int n_type; int /*<<< orphan*/  n_name; struct name* n_flink; } ;

/* Variables and functions */
 int GDEL ; 
 int FUNC0 (struct name*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 

char **
FUNC4(struct name *np)
{
	char **ap, **top;
	struct name *n;
	int t, extra, metoo, verbose;

	n = np;
	if ((t = FUNC0(n)) == 0)
		FUNC1(1, "No names to unpack");
	/*
	 * Compute the number of extra arguments we will need.
	 * We need at least two extra -- one for "mail" and one for
	 * the terminating 0 pointer.  Additional spots may be needed
	 * to pass along -f to the host mailer.
	 */
	extra = 2;
	extra++;
	metoo = FUNC3("metoo") != NULL;
	if (metoo)
		extra++;
	verbose = FUNC3("verbose") != NULL;
	if (verbose)
		extra++;
	top = (char **)FUNC2((t + extra) * sizeof(*top));
	ap = top;
	*ap++ = "sendmail";
	*ap++ = "-i";
	if (metoo)
		*ap++ = "-m";
	if (verbose)
		*ap++ = "-v";
	for (; n != NULL; n = n->n_flink)
		if ((n->n_type & GDEL) == 0)
			*ap++ = n->n_name;
	*ap = NULL;
	return (top);
}