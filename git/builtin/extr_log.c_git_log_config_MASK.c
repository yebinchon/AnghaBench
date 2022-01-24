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
 scalar_t__ decoration_style ; 
 void* default_abbrev_commit ; 
 int /*<<< orphan*/  default_date_mode ; 
 void* default_follow ; 
 void* default_show_root ; 
 void* default_show_signature ; 
 int /*<<< orphan*/  fmt_patch_subject_prefix ; 
 int /*<<< orphan*/  fmt_pretty ; 
 void* FUNC0 (char const*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC2 (char const*,char const*,void*) ; 
 scalar_t__ FUNC3 (char const*,char const*,void*) ; 
 scalar_t__ FUNC4 (char const*,char const*,void*) ; 
 int FUNC5 (char const*,char const*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 void* use_mailmap_config ; 

__attribute__((used)) static int FUNC9(const char *var, const char *value, void *cb)
{
	const char *slot_name;

	if (!FUNC8(var, "format.pretty"))
		return FUNC1(&fmt_pretty, var, value);
	if (!FUNC8(var, "format.subjectprefix"))
		return FUNC1(&fmt_patch_subject_prefix, var, value);
	if (!FUNC8(var, "log.abbrevcommit")) {
		default_abbrev_commit = FUNC0(var, value);
		return 0;
	}
	if (!FUNC8(var, "log.date"))
		return FUNC1(&default_date_mode, var, value);
	if (!FUNC8(var, "log.decorate")) {
		decoration_style = FUNC6(value);
		if (decoration_style < 0)
			decoration_style = 0; /* maybe warn? */
		return 0;
	}
	if (!FUNC8(var, "log.showroot")) {
		default_show_root = FUNC0(var, value);
		return 0;
	}
	if (!FUNC8(var, "log.follow")) {
		default_follow = FUNC0(var, value);
		return 0;
	}
	if (FUNC7(var, "color.decorate.", &slot_name))
		return FUNC5(var, slot_name, value);
	if (!FUNC8(var, "log.mailmap")) {
		use_mailmap_config = FUNC0(var, value);
		return 0;
	}
	if (!FUNC8(var, "log.showsignature")) {
		default_show_signature = FUNC0(var, value);
		return 0;
	}

	if (FUNC4(var, value, cb) < 0)
		return -1;
	if (FUNC3(var, value, cb) < 0)
		return -1;
	return FUNC2(var, value, cb);
}