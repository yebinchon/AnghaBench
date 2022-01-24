#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* buf; int len; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 TYPE_1__ buf ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  keep_cr ; 
 scalar_t__ mboxrd ; 
 int FUNC8 (char const*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC13 (int,char*) ; 

__attribute__((used)) static int FUNC14(FILE *mbox, const char *name, int allow_bare)
{
	FILE *output;
	int fd;
	int status = 0;
	int is_bare = !FUNC6(buf.buf, buf.len);

	if (is_bare && !allow_bare) {
		FUNC4(stderr, "corrupt mailbox\n");
		FUNC1(1);
	}
	fd = FUNC8(name, O_WRONLY | O_CREAT | O_EXCL, 0666);
	if (fd < 0)
		FUNC0("cannot open output file '%s'", name);
	output = FUNC13(fd, "w");

	/* Copy it out, while searching for a line that begins with
	 * "From " and having something that looks like a date format.
	 */
	for (;;) {
		if (!keep_cr && buf.len > 1 && buf.buf[buf.len-1] == '\n' &&
			buf.buf[buf.len-2] == '\r') {
			FUNC12(&buf, buf.len-2);
			FUNC9(&buf, '\n');
		}

		if (mboxrd && FUNC7(&buf))
			FUNC11(&buf, 0, 1);

		if (FUNC5(buf.buf, 1, buf.len, output) != buf.len)
			FUNC0("cannot write output");

		if (FUNC10(&buf, mbox, '\n')) {
			if (FUNC3(mbox)) {
				status = 1;
				break;
			}
			FUNC0("cannot read mbox");
		}
		if (!is_bare && FUNC6(buf.buf, buf.len))
			break; /* done with one message */
	}
	FUNC2(output);
	return status;
}