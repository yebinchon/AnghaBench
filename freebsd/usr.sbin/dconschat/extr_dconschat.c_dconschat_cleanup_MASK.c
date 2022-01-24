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
struct dcons_state {int /*<<< orphan*/  tsave; } ;

/* Variables and functions */
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TCSADRAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct dcons_state sc ; 
 scalar_t__ tc_set ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

__attribute__((used)) static void
FUNC4(int sig)
{
	struct dcons_state *dc;
	int status;

	dc = &sc;
	if (tc_set != 0)
		FUNC2(STDIN_FILENO, TCSADRAIN, &dc->tsave);

	if (sig > 0)
		FUNC1("\n[dconschat exiting with signal %d ...]\n", sig);
	else
		FUNC1("\n[dconschat exiting...]\n");
	FUNC3(&status);
	FUNC0(0);
}