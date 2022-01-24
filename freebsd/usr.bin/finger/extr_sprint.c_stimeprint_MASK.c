#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tm {int tm_yday; int tm_hour; int tm_min; } ;
struct TYPE_3__ {int idletime; } ;
typedef  TYPE_1__ WHERE ;

/* Variables and functions */
 struct tm* FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(WHERE *w)
{
	struct tm *delta;

	if (w->idletime == -1) {
		(void)FUNC1("     ");
		return;
	}

	delta = FUNC0(&w->idletime);
	if (!delta->tm_yday)
		if (!delta->tm_hour)
			if (!delta->tm_min)
				(void)FUNC1("     ");
			else
				(void)FUNC1("%5d", delta->tm_min);
		else
			(void)FUNC1("%2d:%02d",
			    delta->tm_hour, delta->tm_min);
	else
		(void)FUNC1("%4dd", delta->tm_yday);
}