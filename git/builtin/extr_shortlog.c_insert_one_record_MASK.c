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
struct string_list_item {int /*<<< orphan*/ * util; } ;
struct string_list {int dummy; } ;
struct strbuf {int dummy; } ;
struct shortlog {char* common_repo_prefix; scalar_t__ summary; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (struct string_list_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*,char*) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 char* FUNC6 (struct strbuf*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (char const*,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 struct string_list_item* FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC10 (char const*) ; 
 char* FUNC11 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC12 (int,int) ; 

__attribute__((used)) static void FUNC13(struct shortlog *log,
			      const char *author,
			      const char *oneline)
{
	struct string_list_item *item;

	item = FUNC9(&log->list, author);

	if (log->summary)
		item->util = (void *)(FUNC0(item) + 1);
	else {
		const char *dot3 = log->common_repo_prefix;
		char *buffer, *p;
		struct strbuf subject = STRBUF_INIT;
		const char *eol;

		/* Skip any leading whitespace, including any blank lines. */
		while (*oneline && FUNC2(*oneline))
			oneline++;
		eol = FUNC7(oneline, '\n');
		if (!eol)
			eol = oneline + FUNC10(oneline);
		if (FUNC5(oneline, "[PATCH")) {
			char *eob = FUNC7(oneline, ']');
			if (eob && (!eol || eob < eol))
				oneline = eob + 1;
		}
		while (*oneline && FUNC2(*oneline) && *oneline != '\n')
			oneline++;
		FUNC1(&subject, oneline, " ");
		buffer = FUNC6(&subject, NULL);

		if (dot3) {
			int dot3len = FUNC10(dot3);
			if (dot3len > 5) {
				while ((p = FUNC11(buffer, dot3)) != NULL) {
					int taillen = FUNC10(p) - dot3len;
					FUNC3(p, "/.../", 5);
					FUNC4(p + 5, p + dot3len, taillen + 1);
				}
			}
		}

		if (item->util == NULL)
			item->util = FUNC12(1, sizeof(struct string_list));
		FUNC8(item->util, buffer);
	}
}