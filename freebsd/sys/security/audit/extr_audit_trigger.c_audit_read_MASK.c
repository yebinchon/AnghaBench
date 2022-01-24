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
struct uio {int dummy; } ;
struct trigger_info {int /*<<< orphan*/  trigger; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_AUDITTRIGGER ; 
 int PCATCH ; 
 int PSOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct trigger_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct trigger_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  audit_trigger_mtx ; 
 int /*<<< orphan*/  FUNC3 (struct trigger_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trigger_list ; 
 int FUNC7 (int /*<<< orphan*/ *,int,struct uio*) ; 

__attribute__((used)) static int
FUNC8(struct cdev *dev, struct uio *uio, int ioflag)
{
	int error = 0;
	struct trigger_info *ti = NULL;

	FUNC5(&audit_trigger_mtx);
	while (FUNC0(&trigger_list)) {
		error = FUNC4(&trigger_list, &audit_trigger_mtx,
		    PSOCK | PCATCH, "auditd", 0);
		if (error)
			break;
	}
	if (!error) {
		ti = FUNC1(&trigger_list);
		FUNC2(&trigger_list, ti, list);
	}
	FUNC6(&audit_trigger_mtx);
	if (!error) {
		error = FUNC7(&ti->trigger, sizeof(ti->trigger), uio);
		FUNC3(ti, M_AUDITTRIGGER);
	}
	return (error);
}