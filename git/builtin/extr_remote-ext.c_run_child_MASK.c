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
struct child_process {int in; int out; int /*<<< orphan*/  args; scalar_t__ err; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct child_process*) ; 
 scalar_t__ git_req ; 
 int /*<<< orphan*/  git_req_vhost ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct child_process*) ; 

__attribute__((used)) static int FUNC6(const char *arg, const char *service)
{
	int r;
	struct child_process child = CHILD_PROCESS_INIT;

	child.in = -1;
	child.out = -1;
	child.err = 0;
	FUNC3(&child.args, arg, service);

	if (FUNC5(&child) < 0)
		FUNC1("Can't run specified command");

	if (git_req)
		FUNC4(child.in, service, git_req, git_req_vhost);

	r = FUNC0(child.out, child.in);
	if (!r)
		r = FUNC2(&child);
	else
		FUNC2(&child);
	return r;
}