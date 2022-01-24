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
struct patch {int lines_added; int lines_deleted; scalar_t__ is_new; scalar_t__ is_delete; scalar_t__ recount; int /*<<< orphan*/  ws_rule; } ;
struct fragment {unsigned long oldlines; unsigned long newlines; unsigned long leading; unsigned long trailing; } ;
struct apply_state {int /*<<< orphan*/  ws_error_action; int /*<<< orphan*/  apply_in_reverse; int /*<<< orphan*/  linenr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct patch*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct apply_state*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  correct_ws_error ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,unsigned long) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 
 int /*<<< orphan*/  nowarn_ws_error ; 
 int FUNC6 (char const*,int,struct fragment*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,unsigned long,struct fragment*) ; 

__attribute__((used)) static int FUNC8(struct apply_state *state,
			  const char *line,
			  unsigned long size,
			  struct patch *patch,
			  struct fragment *fragment)
{
	int added, deleted;
	int len = FUNC4(line, size), offset;
	unsigned long oldlines, newlines;
	unsigned long leading, trailing;

	offset = FUNC6(line, len, fragment);
	if (offset < 0)
		return -1;
	if (offset > 0 && patch->recount)
		FUNC7(line + offset, size - offset, fragment);
	oldlines = fragment->oldlines;
	newlines = fragment->newlines;
	leading = 0;
	trailing = 0;

	/* Parse the thing.. */
	line += len;
	size -= len;
	state->linenr++;
	added = deleted = 0;
	for (offset = len;
	     0 < size;
	     offset += len, size -= len, line += len, state->linenr++) {
		if (!oldlines && !newlines)
			break;
		len = FUNC4(line, size);
		if (!len || line[len-1] != '\n')
			return -1;
		switch (*line) {
		default:
			return -1;
		case '\n': /* newer GNU diff, an empty context line */
		case ' ':
			oldlines--;
			newlines--;
			if (!deleted && !added)
				leading++;
			trailing++;
			FUNC1(patch, line, len);
			if (!state->apply_in_reverse &&
			    state->ws_error_action == correct_ws_error)
				FUNC2(state, line, len, patch->ws_rule);
			break;
		case '-':
			if (!state->apply_in_reverse)
				FUNC1(patch, line, len);
			if (state->apply_in_reverse &&
			    state->ws_error_action != nowarn_ws_error)
				FUNC2(state, line, len, patch->ws_rule);
			deleted++;
			oldlines--;
			trailing = 0;
			break;
		case '+':
			if (state->apply_in_reverse)
				FUNC1(patch, line, len);
			if (!state->apply_in_reverse &&
			    state->ws_error_action != nowarn_ws_error)
				FUNC2(state, line, len, patch->ws_rule);
			added++;
			newlines--;
			trailing = 0;
			break;

		/*
		 * We allow "\ No newline at end of file". Depending
		 * on locale settings when the patch was produced we
		 * don't know what this line looks like. The only
		 * thing we do know is that it begins with "\ ".
		 * Checking for 12 is just for sanity check -- any
		 * l10n of "\ No newline..." is at least that long.
		 */
		case '\\':
			if (len < 12 || FUNC5(line, "\\ ", 2))
				return -1;
			break;
		}
	}
	if (oldlines || newlines)
		return -1;
	if (!patch->recount && !deleted && !added)
		return -1;

	fragment->leading = leading;
	fragment->trailing = trailing;

	/*
	 * If a fragment ends with an incomplete line, we failed to include
	 * it in the above loop because we hit oldlines == newlines == 0
	 * before seeing it.
	 */
	if (12 < size && !FUNC5(line, "\\ ", 2))
		offset += FUNC4(line, size);

	patch->lines_added += added;
	patch->lines_deleted += deleted;

	if (0 < patch->is_new && oldlines)
		return FUNC3(FUNC0("new file depends on old contents"));
	if (0 < patch->is_delete && newlines)
		return FUNC3(FUNC0("deleted file still has contents"));
	return offset;
}