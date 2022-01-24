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
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;
struct menu_stuff {int nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLEAN_COLOR_ERROR ; 
 int /*<<< orphan*/  CLEAN_COLOR_RESET ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,struct menu_stuff*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf**) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 struct strbuf** FUNC8 (struct strbuf*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static int FUNC12(struct menu_stuff *menu_stuff,
			int is_single,
			struct strbuf input,
			int **chosen)
{
	struct strbuf **choice_list, **ptr;
	int nr = 0;
	int i;

	if (is_single) {
		choice_list = FUNC8(&input, '\n', 0);
	} else {
		char *p = input.buf;
		do {
			if (*p == ',')
				*p = ' ';
		} while (*p++);
		choice_list = FUNC8(&input, ' ', 0);
	}

	for (ptr = choice_list; *ptr; ptr++) {
		char *p;
		int choose = 1;
		int bottom = 0, top = 0;
		int is_range, is_number;

		FUNC9(*ptr);
		if (!(*ptr)->len)
			continue;

		/* Input that begins with '-'; unchoose */
		if (*(*ptr)->buf == '-') {
			choose = 0;
			FUNC7((*ptr), 0, 1);
		}

		is_range = 0;
		is_number = 1;
		for (p = (*ptr)->buf; *p; p++) {
			if ('-' == *p) {
				if (!is_range) {
					is_range = 1;
					is_number = 0;
				} else {
					is_number = 0;
					is_range = 0;
					break;
				}
			} else if (!FUNC4(*p)) {
				is_number = 0;
				is_range = 0;
				break;
			}
		}

		if (is_number) {
			bottom = FUNC1((*ptr)->buf);
			top = bottom;
		} else if (is_range) {
			bottom = FUNC1((*ptr)->buf);
			/* a range can be specified like 5-7 or 5- */
			if (!*(FUNC10((*ptr)->buf, '-') + 1))
				top = menu_stuff->nr;
			else
				top = FUNC1(FUNC10((*ptr)->buf, '-') + 1);
		} else if (!FUNC11((*ptr)->buf, "*")) {
			bottom = 1;
			top = menu_stuff->nr;
		} else {
			bottom = FUNC3((*ptr)->buf, menu_stuff);
			top = bottom;
		}

		if (top <= 0 || bottom <= 0 || top > menu_stuff->nr || bottom > top ||
		    (is_single && bottom != top)) {
			FUNC2(CLEAN_COLOR_ERROR);
			FUNC5(FUNC0("Huh (%s)?\n"), (*ptr)->buf);
			FUNC2(CLEAN_COLOR_RESET);
			continue;
		}

		for (i = bottom; i <= top; i++)
			(*chosen)[i-1] = choose;
	}

	FUNC6(choice_list);

	for (i = 0; i < menu_stuff->nr; i++)
		nr += (*chosen)[i];
	return nr;
}