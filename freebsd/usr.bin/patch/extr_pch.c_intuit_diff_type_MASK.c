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
struct file_name {char* path; scalar_t__ exists; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  names ;
typedef  int LINENUM ;

/* Variables and functions */
 int CONTEXT_DIFF ; 
 int ED_DIFF ; 
 size_t INDEX_FILE ; 
 int MAX_FILE ; 
 int NEW_CONTEXT_DIFF ; 
 size_t NEW_FILE ; 
 int NORMAL_DIFF ; 
 size_t OLD_FILE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int UNI_DIFF ; 
 char* _PATH_DEVNULL ; 
 char* FUNC0 (struct file_name*,int) ; 
 char* bestguess ; 
 char* buf ; 
 int diff_type ; 
 void* FUNC1 (char*,scalar_t__*,int) ; 
 char** filearg ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (struct file_name*,int /*<<< orphan*/ ,int) ; 
 int ok_to_create_file ; 
 int /*<<< orphan*/  FUNC8 (struct file_name*,char*) ; 
 int /*<<< orphan*/  p_base ; 
 void* p_bline ; 
 int p_indent ; 
 void* p_input_line ; 
 int p_sline ; 
 scalar_t__ p_start ; 
 int /*<<< orphan*/  pfp ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ posix ; 
 char* FUNC10 (struct file_name*,int) ; 
 char* revision ; 
 char* source_file ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int strippath ; 
 int FUNC12 (char*,char*,int) ; 
 char* FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char*,char**) ; 
 char* FUNC15 (char*) ; 

__attribute__((used)) static int
FUNC16(void)
{
	off_t	this_line = 0, previous_line;
	off_t	first_command_line = -1;
	LINENUM	fcl_line = -1;
	bool	last_line_was_command = false, this_is_a_command = false;
	bool	stars_last_line = false, stars_this_line = false;
	char	*s, *t;
	int	indent, retval;
	struct file_name names[MAX_FILE];
	int	piece_of_git = 0;

	FUNC7(names, 0, sizeof(names));
	ok_to_create_file = false;
	FUNC3(pfp, p_base, SEEK_SET);
	p_input_line = p_bline - 1;
	for (;;) {
		previous_line = this_line;
		last_line_was_command = this_is_a_command;
		stars_last_line = stars_this_line;
		this_line = FUNC4(pfp);
		indent = 0;
		p_input_line++;
		if (FUNC9(false) == 0) {
			if (first_command_line >= 0) {
				/* nothing but deletes!? */
				p_start = first_command_line;
				p_sline = fcl_line;
				retval = ED_DIFF;
				goto scan_exit;
			} else {
				p_start = this_line;
				p_sline = p_input_line;
				retval = 0;
				goto scan_exit;
			}
		}
		for (s = buf; *s == ' ' || *s == '\t' || *s == 'X'; s++) {
			if (*s == '\t')
				indent += 8 - (indent % 8);
			else
				indent++;
		}
		for (t = s; FUNC5((unsigned char)*t) || *t == ','; t++)
			;
		this_is_a_command = (FUNC5((unsigned char)*s) &&
		    (*t == 'd' || *t == 'c' || *t == 'a'));
		if (first_command_line < 0 && this_is_a_command) {
			first_command_line = this_line;
			fcl_line = p_input_line;
			p_indent = indent;	/* assume this for now */
		}
		if (!stars_last_line && FUNC12(s, "*** ", 4))
			names[OLD_FILE].path = FUNC1(s + 4,
			    &names[OLD_FILE].exists, strippath);
		else if (FUNC12(s, "--- ", 4)) {
			size_t off = 4;
			if (piece_of_git && strippath == 957 &&
			    FUNC12(s, "--- a/", 6))
				off = 6;
			names[NEW_FILE].path = FUNC1(s + off,
			    &names[NEW_FILE].exists, strippath);
		} else if (FUNC12(s, "+++ ", 4)) {
			/* pretend it is the old name */
			size_t off = 4;
			if (piece_of_git && strippath == 957 &&
			    FUNC12(s, "+++ b/", 6))
				off = 6;
			names[OLD_FILE].path = FUNC1(s + off,
			    &names[OLD_FILE].exists, strippath);
		} else if (FUNC12(s, "Index:", 6))
			names[INDEX_FILE].path = FUNC1(s + 6,
			    &names[INDEX_FILE].exists, strippath);
		else if (FUNC12(s, "Prereq:", 7)) {
			for (t = s + 7; FUNC6((unsigned char)*t); t++)
				;
			revision = FUNC15(t);
			for (t = revision;
			     *t && !FUNC6((unsigned char)*t); t++)
				;
			*t = '\0';
			if (*revision == '\0') {
				FUNC2(revision);
				revision = NULL;
			}
		} else if (FUNC12(s, "diff --git a/", 13)) {
			/* Git-style diffs. */
			piece_of_git = 1;
		} else if (FUNC12(s, "==== ", 5)) {
			/* Perforce-style diffs. */
			if ((t = FUNC13(s + 5, " - ")) != NULL)
				FUNC8(&names[NEW_FILE], t + 3);
			FUNC8(&names[OLD_FILE], s + 5);
		}
		if ((!diff_type || diff_type == ED_DIFF) &&
		    first_command_line >= 0 &&
		    FUNC11(s, ".\n")) {
			p_indent = indent;
			p_start = first_command_line;
			p_sline = fcl_line;
			retval = ED_DIFF;
			goto scan_exit;
		}
		if ((!diff_type || diff_type == UNI_DIFF) && FUNC12(s, "@@ -", 4)) {
			if (FUNC12(s + 4, "0,0", 3))
				ok_to_create_file = true;
			p_indent = indent;
			p_start = this_line;
			p_sline = p_input_line;
			retval = UNI_DIFF;
			goto scan_exit;
		}
		stars_this_line = FUNC12(s, "********", 8);
		if ((!diff_type || diff_type == CONTEXT_DIFF) && stars_last_line &&
		    FUNC12(s, "*** ", 4)) {
			if (FUNC14(s + 4, &s) == 0)
				ok_to_create_file = true;
			/*
			 * If this is a new context diff the character just
			 * at the end of the line is a '*'.
			 */
			while (*s && *s != '\n')
				s++;
			p_indent = indent;
			p_start = previous_line;
			p_sline = p_input_line - 1;
			retval = (*(s - 1) == '*' ? NEW_CONTEXT_DIFF : CONTEXT_DIFF);
			goto scan_exit;
		}
		if ((!diff_type || diff_type == NORMAL_DIFF) &&
		    last_line_was_command &&
		    (FUNC12(s, "< ", 2) || FUNC12(s, "> ", 2))) {
			p_start = previous_line;
			p_sline = p_input_line - 1;
			p_indent = indent;
			retval = NORMAL_DIFF;
			goto scan_exit;
		}
	}
scan_exit:
	if (retval == UNI_DIFF) {
		/* unswap old and new */
		struct file_name tmp = names[OLD_FILE];
		names[OLD_FILE] = names[NEW_FILE];
		names[NEW_FILE] = tmp;
	}

	/* Invalidated */
	FUNC2(source_file);
	source_file = NULL;

	if (retval != 0) {
		/*
		 * If we've successfully determined a diff type, stored in
		 * retval, path == NULL means _PATH_DEVNULL if exists is set.
		 * Explicitly specify it here to make it easier to detect later
		 * on that we're actually creating a file and not that we've
		 * just goofed something up.
		 */
		if (names[OLD_FILE].path != NULL)
			source_file = FUNC15(names[OLD_FILE].path);
		else if (names[OLD_FILE].exists)
			source_file = FUNC15(_PATH_DEVNULL);
	}
	if (filearg[0] == NULL) {
		if (posix)
			filearg[0] = FUNC10(names, ok_to_create_file);
		else {
			/* Ignore the Index: name for context diffs, like GNU */
			if (names[OLD_FILE].path != NULL ||
			    names[NEW_FILE].path != NULL) {
				FUNC2(names[INDEX_FILE].path);
				names[INDEX_FILE].path = NULL;
			}
			filearg[0] = FUNC0(names, ok_to_create_file);
		}
	}

	FUNC2(bestguess);
	bestguess = NULL;
	if (filearg[0] != NULL)
		bestguess = FUNC15(filearg[0]);
	else if (!ok_to_create_file) {
		/*
		 * We don't want to create a new file but we need a
		 * filename to set bestguess.  Avoid setting filearg[0]
		 * so the file is not created automatically.
		 */
		if (posix)
			bestguess = FUNC10(names, true);
		else
			bestguess = FUNC0(names, true);
	}
	FUNC2(names[OLD_FILE].path);
	FUNC2(names[NEW_FILE].path);
	FUNC2(names[INDEX_FILE].path);
	return retval;
}