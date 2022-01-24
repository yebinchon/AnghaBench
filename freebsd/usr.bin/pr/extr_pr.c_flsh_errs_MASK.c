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
 int BUFSIZ ; 
 scalar_t__ err ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ stderr ; 
 scalar_t__ stdout ; 

void
FUNC4(void)
{
	char buf[BUFSIZ];

	(void)FUNC0(stdout);
	(void)FUNC0(err);
	if (err == stderr)
		return;
	FUNC3(err);
	while (FUNC1(buf, BUFSIZ, err) != NULL)
		(void)FUNC2(buf, stderr);
}