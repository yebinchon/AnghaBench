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
struct module {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  MOD_LOAD 130 
#define  MOD_SHUTDOWN 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  ksem_count_lock ; 
 int ksem_dead ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nsems ; 

__attribute__((used)) static int
FUNC4(struct module *module, int cmd, void *arg)
{
        int error = 0;

        switch (cmd) {
        case MOD_LOAD:
		error = FUNC1();
		if (error)
			FUNC0();
                break;

        case MOD_UNLOAD:
		FUNC2(&ksem_count_lock);
		if (nsems != 0) {
			error = EOPNOTSUPP;
			FUNC3(&ksem_count_lock);
			break;
		}
		ksem_dead = 1;
		FUNC3(&ksem_count_lock);
		FUNC0();
                break;

        case MOD_SHUTDOWN:
                break;
        default:
                error = EINVAL;
                break;
        }
        return (error);
}