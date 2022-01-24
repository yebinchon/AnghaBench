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
struct string_list_item {char* string; struct string_list* util; } ;
struct string_list {int nr; int strdup_strings; struct string_list_item* items; } ;
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct shortlog {int /*<<< orphan*/  mailmap; struct string_list list; int /*<<< orphan*/  file; scalar_t__ wrap_lines; scalar_t__ summary; scalar_t__ sort_by_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct string_list_item*,int,int /*<<< orphan*/ ) ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC1 (struct string_list_item const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*,struct shortlog*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compare_by_counter ; 
 int /*<<< orphan*/  compare_by_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct string_list*,int) ; 

void FUNC11(struct shortlog *log)
{
	int i, j;
	struct strbuf sb = STRBUF_INIT;

	if (log->sort_by_number)
		FUNC0(log->list.items, log->list.nr,
		      log->summary ? compare_by_counter : compare_by_list);
	for (i = 0; i < log->list.nr; i++) {
		const struct string_list_item *item = &log->list.items[i];
		if (log->summary) {
			FUNC4(log->file, "%6d\t%s\n",
				(int)FUNC1(item), item->string);
		} else {
			struct string_list *onelines = item->util;
			FUNC4(log->file, "%s (%d):\n",
				item->string, onelines->nr);
			for (j = onelines->nr - 1; j >= 0; j--) {
				const char *msg = onelines->items[j].string;

				if (log->wrap_lines) {
					FUNC9(&sb);
					FUNC2(&sb, msg, log);
					FUNC6(sb.buf, sb.len, 1, log->file);
				}
				else
					FUNC4(log->file, "      %s\n", msg);
			}
			FUNC7('\n', log->file);
			onelines->strdup_strings = 1;
			FUNC10(onelines, 0);
			FUNC5(onelines);
		}

		log->list.items[i].util = NULL;
	}

	FUNC8(&sb);
	log->list.strdup_strings = 1;
	FUNC10(&log->list, 1);
	FUNC3(&log->mailmap);
}