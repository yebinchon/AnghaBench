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
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  mailname ; 
 scalar_t__ mailsize ; 
 int msgCount ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 

int
FUNC8(void)
{
	off_t newsize;
	int omsgCount = msgCount;
	FILE *ibuf;

	ibuf = FUNC1(mailname, "r");
	if (ibuf == NULL)
		return (-1);
	FUNC4();
	newsize = FUNC2(ibuf);
	if (newsize == 0)
		return (-1);		/* mail box is now empty??? */
	if (newsize < mailsize)
		return (-1);		/* mail box has shrunk??? */
	if (newsize == mailsize)
		return (0);		/* no new mail */
	FUNC7(ibuf, mailsize);
	FUNC6(msgCount);
	mailsize = FUNC3(ibuf);
	(void)FUNC0(ibuf);
	FUNC5();
	return (msgCount - omsgCount);
}