#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct shallow_info {int** used_shallow; scalar_t__* shallow_ref; TYPE_1__* shallow; } ;
struct oid_array {int nr; int /*<<< orphan*/ * oid; } ;
struct lock_file {int dummy; } ;
struct command {int index; int /*<<< orphan*/  ref_name; } ;
struct check_connected_options {int /*<<< orphan*/  shallow_file; int /*<<< orphan*/  env; } ;
struct TYPE_2__ {int nr; int /*<<< orphan*/ * oid; } ;

/* Variables and functions */
 struct check_connected_options CHECK_CONNECTED_INIT ; 
 struct lock_file LOCK_INIT ; 
 struct oid_array OID_ARRAY_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct command*,struct check_connected_options*) ; 
 int /*<<< orphan*/  command_singleton_iterator ; 
 int /*<<< orphan*/  FUNC1 (struct lock_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct shallow_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct oid_array*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct oid_array*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct lock_file*) ; 
 int /*<<< orphan*/  FUNC7 (struct lock_file*,int /*<<< orphan*/ *,struct oid_array*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  tmp_objdir ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace_shallow ; 

__attribute__((used)) static int FUNC10(struct command *cmd, struct shallow_info *si)
{
	struct lock_file shallow_lock = LOCK_INIT;
	struct oid_array extra = OID_ARRAY_INIT;
	struct check_connected_options opt = CHECK_CONNECTED_INIT;
	uint32_t mask = 1 << (cmd->index % 32);
	int i;

	FUNC9(&trace_shallow,
			 "shallow: update_shallow_ref %s\n", cmd->ref_name);
	for (i = 0; i < si->shallow->nr; i++)
		if (si->used_shallow[i] &&
		    (si->used_shallow[i][cmd->index / 32] & mask) &&
		    !FUNC2(si, i))
			FUNC3(&extra, &si->shallow->oid[i]);

	opt.env = FUNC8(tmp_objdir);
	FUNC7(&shallow_lock, &opt.shallow_file, &extra);
	if (FUNC0(command_singleton_iterator, cmd, &opt)) {
		FUNC6(&shallow_lock);
		FUNC4(&extra);
		return -1;
	}

	FUNC1(&shallow_lock);

	/*
	 * Make sure setup_alternate_shallow() for the next ref does
	 * not lose these new roots..
	 */
	for (i = 0; i < extra.nr; i++)
		FUNC5(the_repository, &extra.oid[i]);

	si->shallow_ref[cmd->index] = 0;
	FUNC4(&extra);
	return 0;
}