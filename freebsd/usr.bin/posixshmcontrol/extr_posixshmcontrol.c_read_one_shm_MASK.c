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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,char*,int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(const char *path)
{
	char buf[4096];
	ssize_t size, se;
	int fd, ret;

	ret = 1;
	fd = FUNC3(path, O_RDONLY, 0);
	if (fd == -1) {
		FUNC4("open %s", path);
		goto out;
	}
	for (;;) {
		size = FUNC2(fd, buf, sizeof(buf));
		if (size > 0) {
			se = FUNC1(buf, 1, size, stdout);
			if (se < size) {
				FUNC5("short write to stdout");
				goto out;
			}
		}
		if (size == (ssize_t)sizeof(buf))
			continue;
		if (size >= 0 && size < (ssize_t)sizeof(buf)) {
			ret = 0;
			goto out;
		}
		FUNC4("read from %s", path);
		goto out;
	}
out:
	FUNC0(fd);
	return (ret);
}