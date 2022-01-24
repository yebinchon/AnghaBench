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
struct procstat_cmd {int /*<<< orphan*/  (* cmd ) (struct procstat*,struct kinfo_proc*) ;} ;
struct procstat {int dummy; } ;
struct kinfo_proc {int /*<<< orphan*/  ki_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct procstat*,struct kinfo_proc*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(const struct procstat_cmd *cmd, struct procstat *prstat,
    struct kinfo_proc *kipp)
{
	char *pidstr = NULL;

	FUNC0(&pidstr, "%d", kipp->ki_pid);
	if (pidstr == NULL)
		FUNC4(1, ENOMEM, "Failed to allocate memory in procstat()");
	FUNC5(pidstr);
	cmd->cmd(prstat, kipp);
	FUNC3(pidstr);
	FUNC1(pidstr);
}