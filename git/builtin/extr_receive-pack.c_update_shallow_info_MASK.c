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
struct shallow_info {struct oid_array* ref; int /*<<< orphan*/  nr_theirs; int /*<<< orphan*/  nr_ours; } ;
struct oid_array {int /*<<< orphan*/  nr; } ;
struct command {size_t index; char* error_string; int skip_update; int /*<<< orphan*/  new_oid; struct command* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct shallow_info*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct oid_array*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct shallow_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct shallow_info*) ; 
 scalar_t__ shallow_update ; 

__attribute__((used)) static void FUNC7(struct command *commands,
				struct shallow_info *si,
				struct oid_array *ref)
{
	struct command *cmd;
	int *ref_status;
	FUNC6(si);
	if (!si->nr_ours && !si->nr_theirs) {
		shallow_update = 0;
		return;
	}

	for (cmd = commands; cmd; cmd = cmd->next) {
		if (FUNC3(&cmd->new_oid))
			continue;
		FUNC4(ref, &cmd->new_oid);
		cmd->index = ref->nr - 1;
	}
	si->ref = ref;

	if (shallow_update) {
		FUNC5(si);
		return;
	}

	FUNC0(ref_status, ref->nr);
	FUNC1(si, NULL, ref_status);
	for (cmd = commands; cmd; cmd = cmd->next) {
		if (FUNC3(&cmd->new_oid))
			continue;
		if (ref_status[cmd->index]) {
			cmd->error_string = "shallow update not allowed";
			cmd->skip_update = 1;
		}
	}
	FUNC2(ref_status);
}