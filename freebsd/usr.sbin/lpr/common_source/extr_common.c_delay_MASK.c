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
struct timeval {int tv_sec; int tv_usec; } ;
struct printer {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct printer*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

void
FUNC2(int millisec)
{
	struct timeval tdelay;

	if (millisec <= 0 || millisec > 10000)
		FUNC0((struct printer *)0, /* fatal() knows how to deal */
		    "unreasonable delay period (%d)", millisec);
	tdelay.tv_sec = millisec / 1000;
	tdelay.tv_usec = millisec * 1000 % 1000000;
	(void) FUNC1(0, (fd_set *)0, (fd_set *)0, (fd_set *)0, &tdelay);
}