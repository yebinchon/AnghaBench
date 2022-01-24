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
struct dcons_state {int /*<<< orphan*/  traw; int /*<<< orphan*/  tsave; } ;
struct dcons_port {scalar_t__ sport; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TCSADRAIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ tc_set ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct dcons_state *dc, struct dcons_port *p)
{
	if (p->sport != 0)
		return;

	if (tc_set)
		FUNC3(STDIN_FILENO, TCSADRAIN, &dc->tsave);

	FUNC2("\n[dconschat suspend]\n");
	FUNC1(FUNC0(), SIGTSTP);

	if (tc_set)
		FUNC3(STDIN_FILENO, TCSADRAIN, &dc->traw);
}