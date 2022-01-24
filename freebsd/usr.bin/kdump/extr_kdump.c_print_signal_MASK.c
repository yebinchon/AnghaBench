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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(int signo)
{
	const char *signame;

	signame = FUNC1(signo);
	if (signame != NULL)
		FUNC0("%s", signame);
	else
		FUNC0("SIG %d", signo);
}