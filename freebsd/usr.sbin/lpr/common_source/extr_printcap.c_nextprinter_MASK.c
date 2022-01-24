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
struct printer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct printer*) ; 
 int FUNC4 (char*,struct printer*) ; 
 int /*<<< orphan*/  printcapdb ; 

int
FUNC5(struct printer *pp, int *error)
{
	int status;
	char *bp;

	FUNC3(pp);
	status = FUNC0(&bp, printcapdb);
	if (FUNC1(&status) == 0) {
		if (error)
			*error = status;
		return 0;
	}
	if (error)
		*error = status;
	status = FUNC4(bp, pp);
	FUNC2(bp);
	if (error && status)
		*error = status;
	return 1;
}