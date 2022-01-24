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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(void)
{
	int fd;

	char temp[] = "/tmp/dup2XXXXXXXXX";
	if ((fd = FUNC2(temp)) < 0)
		FUNC0(1, "mkstemp");
	FUNC3(temp);
	if (FUNC1(fd, 1024) != 0)
		FUNC0(1, "ftruncate");
	return (fd);
}