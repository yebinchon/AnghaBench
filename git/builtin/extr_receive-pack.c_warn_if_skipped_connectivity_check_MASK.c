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
struct shallow_info {scalar_t__* shallow_ref; } ;
struct command {size_t index; int /*<<< orphan*/  ref_name; struct command* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct command*) ; 

__attribute__((used)) static void FUNC3(struct command *commands,
					       struct shallow_info *si)
{
	struct command *cmd;
	int checked_connectivity = 1;

	for (cmd = commands; cmd; cmd = cmd->next) {
		if (FUNC2(cmd) && si->shallow_ref[cmd->index]) {
			FUNC1("BUG: connectivity check has not been run on ref %s",
			      cmd->ref_name);
			checked_connectivity = 0;
		}
	}
	if (!checked_connectivity)
		FUNC0("connectivity check skipped???");
}