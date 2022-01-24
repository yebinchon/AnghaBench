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
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  mailname ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 

void
FUNC4(void)
{
	int fd;

	if (FUNC3("keep") != NULL || FUNC2(mailname) < 0)
		if ((fd = FUNC1(mailname, O_CREAT | O_TRUNC | O_WRONLY, 0600)) >=
		    0)
			(void)FUNC0(fd);
}