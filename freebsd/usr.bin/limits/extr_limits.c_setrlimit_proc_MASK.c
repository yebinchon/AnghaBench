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
struct rlimit {int dummy; } ;
typedef  int pid_t ;

/* Variables and functions */
 int CTL_KERN ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int KERN_PROC ; 
 int KERN_PROC_RLIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rlimit const*,int) ; 

__attribute__((used)) static void
FUNC2(pid_t pid, int resource, const struct rlimit *rlp)
{
    int error;
    int name[5];

    name[0] = CTL_KERN;
    name[1] = KERN_PROC;
    name[2] = KERN_PROC_RLIMIT;
    name[3] = pid;
    name[4] = resource;
    error = FUNC1(name, 5, NULL, 0, rlp, sizeof(*rlp));
    if (error == -1)
	FUNC0(EXIT_FAILURE, "sysctl: kern.proc.rlimit: %d", pid);
}