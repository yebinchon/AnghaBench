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
 int /*<<< orphan*/  FIFONAME ; 
 scalar_t__ FT_FIFO ; 
 int O_NONBLOCK ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  cpid ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ filetype ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int state ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,char*,int) ; 

__attribute__((used)) static void
FUNC6(int fd)
{
	FUNC4(1);
	while (state != 1)
		;
	if (filetype == FT_FIFO) {
		fd = FUNC3(FIFONAME, O_WRONLY | O_NONBLOCK);
		if (fd < 0)
			FUNC1(1, "open for write");
	}
	FUNC2(cpid, SIGUSR1);

	FUNC4(1);
	while (state != 2)
		;
	if (FUNC5(fd, "", 1) != 1)
		FUNC1(1, "write");
	FUNC2(cpid, SIGUSR1);

	FUNC4(1);
	while (state != 3)
		;
	if (FUNC0(fd) != 0)
		FUNC1(1, "close for write");
	FUNC2(cpid, SIGUSR1);

	FUNC4(1);
	while (state != 4)
		;
	if (filetype != FT_FIFO)
		return;
	fd = FUNC3(FIFONAME, O_WRONLY | O_NONBLOCK);
	if (fd < 0)
		FUNC1(1, "open for write");
	FUNC2(cpid, SIGUSR1);

	FUNC4(1);
	while (state != 5)
		;
	if (FUNC5(fd, "", 1) != 1)
		FUNC1(1, "write");
	FUNC2(cpid, SIGUSR1);

	FUNC4(1);
	while (state != 6)
		;
	if (FUNC0(fd) != 0)
		FUNC1(1, "close for write");
	FUNC2(cpid, SIGUSR1);

	FUNC4(1);
	while (state != 7)
		;
}