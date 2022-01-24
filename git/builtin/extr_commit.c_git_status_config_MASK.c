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
struct wt_status {int submodule_summary; int rename_limit; int detect_rename; int /*<<< orphan*/  show_untracked_files; void* relative_paths; int /*<<< orphan*/ * color_palette; void* display_comment_prefix; int /*<<< orphan*/  use_color; void* show_stash; int /*<<< orphan*/  colopts; } ;
struct TYPE_2__ {void* ahead_behind; void* show_branch; int /*<<< orphan*/  status_format; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHOW_ALL_UNTRACKED_FILES ; 
 int /*<<< orphan*/  SHOW_NORMAL_UNTRACKED_FILES ; 
 int /*<<< orphan*/  SHOW_NO_UNTRACKED_FILES ; 
 int /*<<< orphan*/  STATUS_FORMAT_NONE ; 
 int /*<<< orphan*/  STATUS_FORMAT_SHORT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (char const*,char const*,char*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (char const*,char const*) ; 
 int FUNC6 (char const*,char const*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*) ; 
 void* FUNC8 (char const*,char const*) ; 
 void* FUNC9 (char const*,char const*) ; 
 int FUNC10 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (char const*,char*,char const**) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 TYPE_1__ status_deferred_config ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*) ; 

__attribute__((used)) static int FUNC15(const char *k, const char *v, void *cb)
{
	struct wt_status *s = cb;
	const char *slot_name;

	if (FUNC13(k, "column."))
		return FUNC4(k, v, "status", &s->colopts);
	if (!FUNC14(k, "status.submodulesummary")) {
		int is_bool;
		s->submodule_summary = FUNC6(k, v, &is_bool);
		if (is_bool && s->submodule_summary)
			s->submodule_summary = -1;
		return 0;
	}
	if (!FUNC14(k, "status.short")) {
		if (FUNC5(k, v))
			status_deferred_config.status_format = STATUS_FORMAT_SHORT;
		else
			status_deferred_config.status_format = STATUS_FORMAT_NONE;
		return 0;
	}
	if (!FUNC14(k, "status.branch")) {
		status_deferred_config.show_branch = FUNC5(k, v);
		return 0;
	}
	if (!FUNC14(k, "status.aheadbehind")) {
		status_deferred_config.ahead_behind = FUNC5(k, v);
		return 0;
	}
	if (!FUNC14(k, "status.showstash")) {
		s->show_stash = FUNC5(k, v);
		return 0;
	}
	if (!FUNC14(k, "status.color") || !FUNC14(k, "color.status")) {
		s->use_color = FUNC7(k, v);
		return 0;
	}
	if (!FUNC14(k, "status.displaycommentprefix")) {
		s->display_comment_prefix = FUNC5(k, v);
		return 0;
	}
	if (FUNC12(k, "status.color.", &slot_name) ||
	    FUNC12(k, "color.status.", &slot_name)) {
		int slot = FUNC11(slot_name);
		if (slot < 0)
			return 0;
		if (!v)
			return FUNC2(k);
		return FUNC1(v, s->color_palette[slot]);
	}
	if (!FUNC14(k, "status.relativepaths")) {
		s->relative_paths = FUNC5(k, v);
		return 0;
	}
	if (!FUNC14(k, "status.showuntrackedfiles")) {
		if (!v)
			return FUNC2(k);
		else if (!FUNC14(v, "no"))
			s->show_untracked_files = SHOW_NO_UNTRACKED_FILES;
		else if (!FUNC14(v, "normal"))
			s->show_untracked_files = SHOW_NORMAL_UNTRACKED_FILES;
		else if (!FUNC14(v, "all"))
			s->show_untracked_files = SHOW_ALL_UNTRACKED_FILES;
		else
			return FUNC3(FUNC0("Invalid untracked files mode '%s'"), v);
		return 0;
	}
	if (!FUNC14(k, "diff.renamelimit")) {
		if (s->rename_limit == -1)
			s->rename_limit = FUNC8(k, v);
		return 0;
	}
	if (!FUNC14(k, "status.renamelimit")) {
		s->rename_limit = FUNC8(k, v);
		return 0;
	}
	if (!FUNC14(k, "diff.renames")) {
		if (s->detect_rename == -1)
			s->detect_rename = FUNC9(k, v);
		return 0;
	}
	if (!FUNC14(k, "status.renames")) {
		s->detect_rename = FUNC9(k, v);
		return 0;
	}
	return FUNC10(k, v, NULL);
}