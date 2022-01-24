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
struct sysent {int dummy; } ;
struct syscall_helper_data {scalar_t__ syscall_no; int registered; int /*<<< orphan*/  old_sysent; int /*<<< orphan*/  new_sysent; } ;

/* Variables and functions */
 scalar_t__ NO_SYSCALL ; 
 int /*<<< orphan*/  FUNC0 (struct sysent*,struct syscall_helper_data*) ; 
 int FUNC1 (struct sysent*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int
FUNC2(struct sysent *sysents,
    struct syscall_helper_data *sd, int flags)
{
	struct syscall_helper_data *sd1;
	int error;

	for (sd1 = sd; sd1->syscall_no != NO_SYSCALL; sd1++) {
		error = FUNC1(sysents, &sd1->syscall_no,
		    &sd1->new_sysent, &sd1->old_sysent, flags);
		if (error != 0) {
			FUNC0(sysents, sd);
			return (error);
		}
		sd1->registered = 1;
	}
	return (0);
}