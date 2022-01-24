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
struct sigaction {void* sa_handler; int /*<<< orphan*/  sa_mask; } ;
typedef  int /*<<< orphan*/  sa ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (struct sigaction*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 void* sigchld_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* sighup_handler ; 
 void* sigterm_handler ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct sigaction sa;
	int error;

	FUNC0(&sa, sizeof(sa));
	sa.sa_handler = sighup_handler;
	FUNC3(&sa.sa_mask);
	error = FUNC2(SIGHUP, &sa, NULL);
	if (error != 0)
		FUNC1(1, "sigaction");

	sa.sa_handler = sigterm_handler;
	error = FUNC2(SIGTERM, &sa, NULL);
	if (error != 0)
		FUNC1(1, "sigaction");

	sa.sa_handler = sigterm_handler;
	error = FUNC2(SIGINT, &sa, NULL);
	if (error != 0)
		FUNC1(1, "sigaction");

	sa.sa_handler = sigchld_handler;
	error = FUNC2(SIGCHLD, &sa, NULL);
	if (error != 0)
		FUNC1(1, "sigaction");
}