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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4(const char *path, uint64_t newsize)
{
	int error, fd, ret;

	ret = 0;
	fd = FUNC2(path, O_RDWR, 0);
	if (fd == -1) {
		FUNC3("open %s", path);
		return (1);
	}
	error = FUNC1(fd, newsize);
	if (error == -1) {
		FUNC3("truncate %s", path);
		ret = 1;
	}
	FUNC0(fd);
	return (ret);
}