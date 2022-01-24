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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int FUNC8 (char*) ; 

int
FUNC9(void)
{
	char buf[256], conf[] = "/etc/libalias.conf";
	FILE *fd;
	int i, len;

	fd = FUNC6(conf, "r");
	if (fd == NULL)
		FUNC2(1, "fopen(%s)", conf);

	FUNC1();

	for (;;) {
		FUNC5(buf, 256, fd);
		if (FUNC4(fd)) 
		        break;
		len = FUNC8(buf);
		if (len > 1) {
			for (i = 0; i < len; i++)
				if (!FUNC7(buf[i]))
					break;
			if (buf[i] == '#')
				continue;
			buf[len - 1] = '\0';
			FUNC0(buf);
		}
	}
	FUNC3(fd);
	return (0);
}