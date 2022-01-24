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
struct kinfo_proc {int /*<<< orphan*/  ki_comm; int /*<<< orphan*/  ki_tid; int /*<<< orphan*/  ki_pid; } ;

/* Variables and functions */
 int PS_OPT_PERTHREAD ; 
 int procstat_opts ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct kinfo_proc *kipp)
{

	FUNC0("{d:process_id/%5d/%d} ", kipp->ki_pid);
	if ((procstat_opts & PS_OPT_PERTHREAD) != 0)
		FUNC0("{d:thread_id/%6d/%d} ", kipp->ki_tid);
	FUNC0("{d:command/%-16s/%s} ", kipp->ki_comm);
}