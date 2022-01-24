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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC5(char *file)
{
	register int fd, nr, nw;
	char buf[1024];

	if ((fd = FUNC2(file, O_RDONLY, 0)) < 0)
		FUNC1(1, "%s", file);

	while ((nr = FUNC3(fd, buf, sizeof(buf))) > 0)
		if ((nw = FUNC4(STDERR_FILENO, buf, nr)) == -1)
			FUNC1(1, "write to stderr");
	if (nr != 0)
		FUNC1(1, "%s", file);
	(void)FUNC0(fd);
}