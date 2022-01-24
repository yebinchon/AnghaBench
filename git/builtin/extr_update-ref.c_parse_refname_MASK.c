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
struct strbuf {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  REFNAME_ALLOW_ONELEVEL ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ line_termination ; 
 char* FUNC2 (char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 char* FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static char *FUNC6(struct strbuf *input, const char **next)
{
	struct strbuf ref = STRBUF_INIT;

	if (line_termination) {
		/* Without -z, use the next argument */
		*next = FUNC2(*next, &ref);
	} else {
		/* With -z, use everything up to the next NUL */
		FUNC3(&ref, *next);
		*next += ref.len;
	}

	if (!ref.len) {
		FUNC5(&ref);
		return NULL;
	}

	if (FUNC0(ref.buf, REFNAME_ALLOW_ONELEVEL))
		FUNC1("invalid ref format: %s", ref.buf);

	return FUNC4(&ref, NULL);
}