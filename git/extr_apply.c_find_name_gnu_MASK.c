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

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (struct strbuf*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC7(struct strbuf *root,
			   const char *line,
			   int p_value)
{
	struct strbuf name = STRBUF_INIT;
	char *cp;

	/*
	 * Proposed "new-style" GNU patch/diff format; see
	 * https://public-inbox.org/git/7vll0wvb2a.fsf@assigned-by-dhcp.cox.net/
	 */
	if (FUNC6(&name, line, NULL)) {
		FUNC3(&name);
		return NULL;
	}

	for (cp = name.buf; p_value; p_value--) {
		cp = FUNC5(cp, '/');
		if (!cp) {
			FUNC3(&name);
			return NULL;
		}
		cp++;
	}

	FUNC4(&name, 0, cp - name.buf);
	if (root->len)
		FUNC2(&name, 0, root->buf, root->len);
	return FUNC0(FUNC1(&name, NULL));
}