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
struct commit_list {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (struct commit_list*) ; 

__attribute__((used)) static void FUNC5(struct commit_list *remoteheads, const char *err_msg)
{
	if (err_msg)
		FUNC1("%s", err_msg);
	FUNC3(stderr,
		"%s", FUNC0("Not committing merge; use 'git commit' to complete the merge.\n"));
	FUNC4(remoteheads);
	FUNC2(1);
}