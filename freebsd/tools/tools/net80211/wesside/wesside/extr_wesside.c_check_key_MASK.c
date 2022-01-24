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
struct timeval {scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {double tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_FILE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int,char*,int) ; 
 TYPE_1__ real_start ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

void FUNC8() {
	char buf[1024];
	int fd;
	int rd;
	struct timeval now;

	fd = FUNC3(KEY_FILE, O_RDONLY);

	if (fd == -1) {
		return;
	}

	rd = FUNC6(fd, buf, sizeof(buf) -1);
	if (rd == -1) {
		FUNC4("read()");
		FUNC1(1);
	}

	buf[rd] = 0;

	FUNC0(fd);

	FUNC5 ("\n\n");
	FUNC7("KEY=(%s)\n", buf);

	if (FUNC2(&now, NULL) == -1) {
		FUNC4("gettimeofday()");
		FUNC1(1);
	}

	FUNC5 ("Owned in %.02f minutes\n", 
		((double) now.tv_sec - real_start.tv_sec)/60.0);
	FUNC1(0);
}