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
 scalar_t__* mevent_pipefd ; 
 scalar_t__ mevent_tid ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int) ; 

__attribute__((used)) static void
FUNC2(void)
{
	char c = '\0';
	
	/*
	 * If calling from outside the i/o thread, write a byte on the
	 * pipe to force the i/o thread to exit the blocking kevent call.
	 */
	if (mevent_pipefd[1] != 0 && FUNC0() != mevent_tid) {
		FUNC1(mevent_pipefd[1], &c, 1);
	}
}