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
struct strbuf {int len; char* buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  comment_line_char ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC12(const char *branch_name)
{
	struct strbuf buf = STRBUF_INIT;
	struct strbuf name = STRBUF_INIT;

	FUNC4(&buf, branch_name);
	if (!buf.len || buf.buf[buf.len-1] != '\n')
		FUNC5(&buf, '\n');
	FUNC7(&buf,
		    FUNC0("Please edit the description for the branch\n"
		      "  %s\n"
		      "Lines starting with '%c' will be stripped.\n"),
		    branch_name, comment_line_char);
	FUNC11(FUNC1(), buf.buf, buf.len);
	FUNC9(&buf);
	if (FUNC3(FUNC1(), &buf, NULL)) {
		FUNC8(&buf);
		return -1;
	}
	FUNC10(&buf, 1);

	FUNC6(&name, "branch.%s.description", branch_name);
	FUNC2(name.buf, buf.len ? buf.buf : NULL);
	FUNC8(&name);
	FUNC8(&buf);

	return 0;
}