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
struct strbuf {scalar_t__ len; } ;
struct option {struct strbuf* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char const*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char) ; 
 scalar_t__ FUNC6 (struct strbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(const struct option *opt,
		const char *arg, int unset)
{
	int fd;
	struct strbuf *buf = opt->value;

	FUNC0(unset, arg);

	if (buf->len)
		FUNC5(buf, '\n');
	if (!FUNC7(arg, "-"))
		fd = 0;
	else {
		fd = FUNC4(arg, O_RDONLY);
		if (fd < 0)
			FUNC3(FUNC1("git commit-tree: failed to open '%s'"), arg);
	}
	if (FUNC6(buf, fd, 0) < 0)
		FUNC3(FUNC1("git commit-tree: failed to read '%s'"), arg);
	if (fd && FUNC2(fd))
		FUNC3(FUNC1("git commit-tree: failed to close '%s'"), arg);

	return 0;
}