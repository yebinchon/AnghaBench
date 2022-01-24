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
typedef  int /*<<< orphan*/  time_t ;
struct printer {int tof; char* form_feed; int /*<<< orphan*/  no_formfeed; scalar_t__ short_banner; } ;

/* Variables and functions */
 char* class ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ofd ; 
 int /*<<< orphan*/  FUNC1 (struct printer*,int /*<<< orphan*/ ,char*,char) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC5(struct printer *pp, char *name1, char *name2)
{
	time_t tvec;

	FUNC3(&tvec);
	if (!pp->no_formfeed && !pp->tof)
		(void) FUNC4(ofd, pp->form_feed, FUNC2(pp->form_feed));
	if (pp->short_banner) {	/* short banner only */
		if (class[0]) {
			(void) FUNC4(ofd, class, FUNC2(class));
			(void) FUNC4(ofd, ":", 1);
		}
		(void) FUNC4(ofd, name1, FUNC2(name1));
		(void) FUNC4(ofd, "  Job: ", 7);
		(void) FUNC4(ofd, name2, FUNC2(name2));
		(void) FUNC4(ofd, "  Date: ", 8);
		(void) FUNC4(ofd, FUNC0(&tvec), 24);
		(void) FUNC4(ofd, "\n", 1);
	} else {	/* normal banner */
		(void) FUNC4(ofd, "\n\n\n", 3);
		FUNC1(pp, ofd, name1, '\0');
		(void) FUNC4(ofd, "\n\n", 2);
		FUNC1(pp, ofd, name2, '\0');
		if (class[0]) {
			(void) FUNC4(ofd,"\n\n\n",3);
			FUNC1(pp, ofd, class, '\0');
		}
		(void) FUNC4(ofd, "\n\n\n\n\t\t\t\t\tJob:  ", 15);
		(void) FUNC4(ofd, name2, FUNC2(name2));
		(void) FUNC4(ofd, "\n\t\t\t\t\tDate: ", 12);
		(void) FUNC4(ofd, FUNC0(&tvec), 24);
		(void) FUNC4(ofd, "\n", 1);
	}
	if (!pp->no_formfeed)
		(void) FUNC4(ofd, pp->form_feed, FUNC2(pp->form_feed));
	pp->tof = 1;
}