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
struct rebase_options {int use_legacy_rebase; void* reschedule_failed_exec; void* autostash; int /*<<< orphan*/ * gpg_sign_opt; void* autosquash; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  REBASE_DIFFSTAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (char const*,char const*) ; 
 int FUNC2 (char const*,char const*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(const char *var, const char *value, void *data)
{
	struct rebase_options *opts = data;

	if (!FUNC3(var, "rebase.stat")) {
		if (FUNC1(var, value))
			opts->flags |= REBASE_DIFFSTAT;
		else
			opts->flags &= ~REBASE_DIFFSTAT;
		return 0;
	}

	if (!FUNC3(var, "rebase.autosquash")) {
		opts->autosquash = FUNC1(var, value);
		return 0;
	}

	if (!FUNC3(var, "commit.gpgsign")) {
		FUNC0(opts->gpg_sign_opt);
		opts->gpg_sign_opt = FUNC1(var, value) ?
			FUNC4("-S") : NULL;
		return 0;
	}

	if (!FUNC3(var, "rebase.autostash")) {
		opts->autostash = FUNC1(var, value);
		return 0;
	}

	if (!FUNC3(var, "rebase.reschedulefailedexec")) {
		opts->reschedule_failed_exec = FUNC1(var, value);
		return 0;
	}

	if (!FUNC3(var, "rebase.usebuiltin")) {
		opts->use_legacy_rebase = !FUNC1(var, value);
		return 0;
	}

	return FUNC2(var, value, data);
}