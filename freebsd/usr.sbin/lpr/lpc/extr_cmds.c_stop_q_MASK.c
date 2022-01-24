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
struct printer {char* printer; } ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  SQS_STOPP ; 
 int /*<<< orphan*/  FUNC0 (struct printer*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct printer*,char*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct printer *pp)
{
	int setres;
	char lf[MAXPATHLEN];

	FUNC0(pp, lf, sizeof lf);
	FUNC1("%s:\n", pp->printer);

	setres = FUNC2(SQS_STOPP, lf);

	if (setres >= 0)
		FUNC3(pp, "printing disabled\n", 0);
}