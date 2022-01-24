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
struct string_list_item {char* string; } ;
struct strbuf {char* buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 

__attribute__((used)) static int FUNC8(struct string_list_item *item, void *cb_data)
{
	struct strbuf err = STRBUF_INIT;
	int *required = cb_data;
	char *ref_git = FUNC2(item->string, &err);

	if (!ref_git) {
		if (*required)
			FUNC3("%s", err.buf);
		else
			FUNC4(stderr,
				FUNC0("info: Could not add alternate for '%s': %s\n"),
				item->string, err.buf);
	} else {
		struct strbuf sb = STRBUF_INIT;
		FUNC6(&sb, "%s/objects", ref_git);
		FUNC1(sb.buf);
		FUNC7(&sb);
	}

	FUNC7(&err);
	FUNC5(ref_git);
	return 0;
}