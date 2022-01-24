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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int,char*,int) ; 

__attribute__((used)) static void
FUNC6(int from_fd, int to_fd)
{
	int cnt, ret;
	static char buf[1024];

	ret = FUNC2(from_fd, (off_t)0, SEEK_SET);
	if (ret >= 0)
		ret = FUNC2(to_fd, (off_t)0, SEEK_SET);
	if (ret >= 0)
		ret = FUNC1(to_fd, (off_t)0);
	if (ret >= 0)
		do {
			cnt = FUNC3(from_fd, buf, 1024);
			if (cnt > 0)
				ret = FUNC5(to_fd, buf, cnt);
			else if (cnt < 0)
				ret = cnt;
		} while (cnt > 0 && ret >= 0);
	if (ret >= 0)
		ret = FUNC0(to_fd);
	if (ret < 0)
		FUNC4(LOG_ERR, "stable restart copy failure: %m");
}