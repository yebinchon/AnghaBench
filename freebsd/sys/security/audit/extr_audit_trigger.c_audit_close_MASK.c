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
struct trigger_info {int dummy; } ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_AUDITTRIGGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct trigger_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct trigger_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ audit_isopen ; 
 int /*<<< orphan*/  audit_trigger_mtx ; 
 int /*<<< orphan*/  FUNC3 (struct trigger_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trigger_list ; 

__attribute__((used)) static int
FUNC6(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
	struct trigger_info *ti;

	/* Flush the queue of pending trigger events. */
	FUNC4(&audit_trigger_mtx);
	audit_isopen = 0;
	while (!FUNC0(&trigger_list)) {
		ti = FUNC1(&trigger_list);
		FUNC2(&trigger_list, ti, list);
		FUNC3(ti, M_AUDITTRIGGER);
	}
	FUNC5(&audit_trigger_mtx);

	return (0);
}