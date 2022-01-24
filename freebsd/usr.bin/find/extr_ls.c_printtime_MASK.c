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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  longstring ;

/* Variables and functions */
 int /*<<< orphan*/  D_MD_ORDER ; 
 scalar_t__ SIXMONTHS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(time_t ftime)
{
	char longstring[80];
	static time_t lnow;
	const char *format;
	static int d_first = -1;

#ifdef D_MD_ORDER
	if (d_first < 0)
		d_first = (*nl_langinfo(D_MD_ORDER) == 'd');
#endif
	if (lnow == 0)
		lnow = FUNC4(NULL);

#define	SIXMONTHS	((365 / 2) * 86400)
	if (ftime + SIXMONTHS > lnow && ftime < lnow + SIXMONTHS)
		/* mmm dd hh:mm || dd mmm hh:mm */
		format = d_first ? "%e %b %R " : "%b %e %R ";
	else
		/* mmm dd  yyyy || dd mmm  yyyy */
		format = d_first ? "%e %b  %Y " : "%b %e  %Y ";
	FUNC3(longstring, sizeof(longstring), format, FUNC1(&ftime));
	FUNC0(longstring, stdout);
}