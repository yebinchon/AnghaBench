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
 int /*<<< orphan*/  DCONS_CON ; 
 int /*<<< orphan*/  DCONS_GDB ; 
 int /*<<< orphan*/  DC_GDB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dcons_callout ; 
 int /*<<< orphan*/  dcons_timeout ; 
 int hz ; 
 int poll_hz ; 

__attribute__((used)) static int
FUNC3(void)
{
	int polltime;

	FUNC2(DCONS_CON, "dcons", 0);
	FUNC2(DCONS_GDB, "dgdb", DC_GDB);
	FUNC0(&dcons_callout, 1);
	polltime = hz / poll_hz;
	FUNC1(&dcons_callout, polltime, dcons_timeout, NULL);
	return(0);
}