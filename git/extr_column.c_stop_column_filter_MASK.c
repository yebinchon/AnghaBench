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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  column_process ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int fd_out ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC4(void)
{
	if (fd_out == -1)
		return -1;

	FUNC2(stdout);
	FUNC0(1);
	FUNC3(&column_process);
	FUNC1(fd_out, 1);
	FUNC0(fd_out);
	fd_out = -1;
	return 0;
}