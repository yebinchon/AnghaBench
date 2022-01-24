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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct menu_stuff {int nr; } ;
struct menu_opts {int flags; scalar_t__ prompt; scalar_t__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  CLEAN_COLOR_HEADER ; 
 int /*<<< orphan*/  CLEAN_COLOR_PROMPT ; 
 int /*<<< orphan*/  CLEAN_COLOR_RESET ; 
 int EOF ; 
 int MENU_OPTS_IMMEDIATE ; 
 int MENU_OPTS_LIST_ONLY ; 
 int MENU_OPTS_SINGLETON ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC1 (scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int FUNC4 (struct menu_stuff*,int,struct strbuf,int**) ; 
 int /*<<< orphan*/  FUNC5 (struct menu_stuff*,int**) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC10 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int* FUNC14 (int /*<<< orphan*/ ,int) ; 
 int* FUNC15 (int) ; 

__attribute__((used)) static int *FUNC16(struct menu_opts *opts, struct menu_stuff *stuff)
{
	struct strbuf choice = STRBUF_INIT;
	int *chosen, *result;
	int nr = 0;
	int eof = 0;
	int i;

	FUNC0(chosen, stuff->nr);
	/* set chosen as uninitialized */
	for (i = 0; i < stuff->nr; i++)
		chosen[i] = -1;

	for (;;) {
		if (opts->header) {
			FUNC7("%s%s%s",
				  FUNC2(CLEAN_COLOR_HEADER),
				  FUNC1(opts->header),
				  FUNC2(CLEAN_COLOR_RESET));
		}

		/* chosen will be initialized by print_highlight_menu_stuff */
		FUNC5(stuff, &chosen);

		if (opts->flags & MENU_OPTS_LIST_ONLY)
			break;

		if (opts->prompt) {
			FUNC6("%s%s%s%s",
			       FUNC2(CLEAN_COLOR_PROMPT),
			       FUNC1(opts->prompt),
			       opts->flags & MENU_OPTS_SINGLETON ? "> " : ">> ",
			       FUNC2(CLEAN_COLOR_RESET));
		}

		if (FUNC10(&choice, stdin) != EOF) {
			FUNC12(&choice);
		} else {
			eof = 1;
			break;
		}

		/* help for prompt */
		if (!FUNC13(choice.buf, "?")) {
			FUNC8(opts->flags & MENU_OPTS_SINGLETON);
			continue;
		}

		/* for a multiple-choice menu, press ENTER (empty) will return back */
		if (!(opts->flags & MENU_OPTS_SINGLETON) && !choice.len)
			break;

		nr = FUNC4(stuff,
				  opts->flags & MENU_OPTS_SINGLETON,
				  choice,
				  &chosen);

		if (opts->flags & MENU_OPTS_SINGLETON) {
			if (nr)
				break;
		} else if (opts->flags & MENU_OPTS_IMMEDIATE) {
			break;
		}
	}

	if (eof) {
		result = FUNC15(sizeof(int));
		*result = EOF;
	} else {
		int j = 0;

		/*
		 * recalculate nr, if return back from menu directly with
		 * default selections.
		 */
		if (!nr) {
			for (i = 0; i < stuff->nr; i++)
				nr += chosen[i];
		}

		result = FUNC14(FUNC9(nr, 1), sizeof(int));
		for (i = 0; i < stuff->nr && j < nr; i++) {
			if (chosen[i])
				result[j++] = i;
		}
		result[j] = EOF;
	}

	FUNC3(chosen);
	FUNC11(&choice);
	return result;
}