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
struct strbuf {char* buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 TYPE_1__* cf ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,int) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static int FUNC15(struct strbuf *pat)
{
	struct strbuf path = STRBUF_INIT;
	char *expanded;
	int prefix = 0;

	expanded = FUNC4(pat->buf, 1);
	if (expanded) {
		FUNC13(pat);
		FUNC9(pat, expanded);
		FUNC6(expanded);
	}

	if (pat->buf[0] == '.' && FUNC8(pat->buf[1])) {
		const char *slash;

		if (!cf || !cf->path)
			return FUNC3(FUNC1("relative config include "
				       "conditionals must come from files"));

		FUNC11(&path, cf->path, 1);
		slash = FUNC5(path.buf);
		if (!slash)
			FUNC0("how is this possible?");
		FUNC14(pat, 0, 1, path.buf, slash - path.buf);
		prefix = slash - path.buf + 1 /* slash */;
	} else if (!FUNC7(pat->buf))
		FUNC10(pat, 0, "**/", 3);

	FUNC2(pat);

	FUNC12(&path);
	return prefix;
}