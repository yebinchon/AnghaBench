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
struct strbuf {int len; } ;
struct parse_event_data {struct config_options const* member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct config_options {int error_action; } ;
typedef  int /*<<< orphan*/  config_fn_t ;
struct TYPE_2__ {int origin_type; int default_error_action; int /*<<< orphan*/  name; int /*<<< orphan*/  linenr; scalar_t__ eof; struct strbuf var; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  CONFIG_ERROR_DIE 136 
#define  CONFIG_ERROR_ERROR 135 
#define  CONFIG_ERROR_SILENT 134 
#define  CONFIG_ERROR_UNSET 133 
 int /*<<< orphan*/  CONFIG_EVENT_COMMENT ; 
 int /*<<< orphan*/  CONFIG_EVENT_ENTRY ; 
 int /*<<< orphan*/  CONFIG_EVENT_EOF ; 
 int /*<<< orphan*/  CONFIG_EVENT_ERROR ; 
 int /*<<< orphan*/  CONFIG_EVENT_SECTION ; 
 int /*<<< orphan*/  CONFIG_EVENT_WHITESPACE ; 
#define  CONFIG_ORIGIN_BLOB 132 
#define  CONFIG_ORIGIN_CMDLINE 131 
#define  CONFIG_ORIGIN_FILE 130 
#define  CONFIG_ORIGIN_STDIN 129 
#define  CONFIG_ORIGIN_SUBMODULE_BLOB 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* cf ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct parse_event_data*) ; 
 int FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (struct strbuf*) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,void*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,int) ; 
 char FUNC14 (int) ; 
 char const* utf8_bom ; 
 char* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC16(config_fn_t fn, void *data,
			    const struct config_options *opts)
{
	int comment = 0;
	int baselen = 0;
	struct strbuf *var = &cf->var;
	int error_return = 0;
	char *error_msg = NULL;

	/* U+FEFF Byte Order Mark in UTF8 */
	const char *bomptr = utf8_bom;

	/* For the parser event callback */
	struct parse_event_data event_data = {
		CONFIG_EVENT_EOF, 0, opts
	};

	for (;;) {
		int c;

		c = FUNC7();
		if (bomptr && *bomptr) {
			/* We are at the file beginning; skip UTF8-encoded BOM
			 * if present. Sane editors won't put this in on their
			 * own, but e.g. Windows Notepad will do it happily. */
			if (c == (*bomptr & 0377)) {
				bomptr++;
				continue;
			} else {
				/* Do not tolerate partial BOM. */
				if (bomptr != utf8_bom)
					break;
				/* No BOM at file beginning. Cool. */
				bomptr = NULL;
			}
		}
		if (c == '\n') {
			if (cf->eof) {
				if (FUNC3(CONFIG_EVENT_EOF, &event_data) < 0)
					return -1;
				return 0;
			}
			if (FUNC3(CONFIG_EVENT_WHITESPACE, &event_data) < 0)
				return -1;
			comment = 0;
			continue;
		}
		if (comment)
			continue;
		if (FUNC10(c)) {
			if (FUNC3(CONFIG_EVENT_WHITESPACE, &event_data) < 0)
					return -1;
			continue;
		}
		if (c == '#' || c == ';') {
			if (FUNC3(CONFIG_EVENT_COMMENT, &event_data) < 0)
					return -1;
			comment = 1;
			continue;
		}
		if (c == '[') {
			if (FUNC3(CONFIG_EVENT_SECTION, &event_data) < 0)
					return -1;

			/* Reset prior to determining a new stem */
			FUNC12(var);
			if (FUNC6(var) < 0 || var->len < 1)
				break;
			FUNC11(var, '.');
			baselen = var->len;
			continue;
		}
		if (!FUNC9(c))
			break;

		if (FUNC3(CONFIG_EVENT_ENTRY, &event_data) < 0)
			return -1;

		/*
		 * Truncate the var name back to the section header
		 * stem prior to grabbing the suffix part of the name
		 * and the value.
		 */
		FUNC13(var, baselen);
		FUNC11(var, FUNC14(c));
		if (FUNC8(fn, data, var) < 0)
			break;
	}

	if (FUNC3(CONFIG_EVENT_ERROR, &event_data) < 0)
		return -1;

	switch (cf->origin_type) {
	case CONFIG_ORIGIN_BLOB:
		error_msg = FUNC15(FUNC1("bad config line %d in blob %s"),
				      cf->linenr, cf->name);
		break;
	case CONFIG_ORIGIN_FILE:
		error_msg = FUNC15(FUNC1("bad config line %d in file %s"),
				      cf->linenr, cf->name);
		break;
	case CONFIG_ORIGIN_STDIN:
		error_msg = FUNC15(FUNC1("bad config line %d in standard input"),
				      cf->linenr);
		break;
	case CONFIG_ORIGIN_SUBMODULE_BLOB:
		error_msg = FUNC15(FUNC1("bad config line %d in submodule-blob %s"),
				       cf->linenr, cf->name);
		break;
	case CONFIG_ORIGIN_CMDLINE:
		error_msg = FUNC15(FUNC1("bad config line %d in command line %s"),
				       cf->linenr, cf->name);
		break;
	default:
		error_msg = FUNC15(FUNC1("bad config line %d in %s"),
				      cf->linenr, cf->name);
	}

	switch (opts && opts->error_action ?
		opts->error_action :
		cf->default_error_action) {
	case CONFIG_ERROR_DIE:
		FUNC2("%s", error_msg);
		break;
	case CONFIG_ERROR_ERROR:
		error_return = FUNC4("%s", error_msg);
		break;
	case CONFIG_ERROR_SILENT:
		error_return = -1;
		break;
	case CONFIG_ERROR_UNSET:
		FUNC0("config error action unset");
	}

	FUNC5(error_msg);
	return error_return;
}