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
typedef  int pid_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(pid_t pid)
{
	int status;

	pid = FUNC2(pid, &status, 0);
	if (pid == -1)
		FUNC1(1, "waitpid");

	return (FUNC0(status));
}