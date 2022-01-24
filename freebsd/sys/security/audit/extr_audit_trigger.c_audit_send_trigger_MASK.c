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
struct trigger_info {unsigned int trigger; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  M_AUDITTRIGGER ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct trigger_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  audit_isopen ; 
 int /*<<< orphan*/  audit_trigger_mtx ; 
 int /*<<< orphan*/  FUNC1 (struct trigger_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 struct trigger_info* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trigger_list ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(unsigned int trigger)
{
	struct trigger_info *ti;

	ti = FUNC2(sizeof *ti, M_AUDITTRIGGER, M_WAITOK);
	FUNC3(&audit_trigger_mtx);
	if (!audit_isopen) {
		/* If nobody's listening, we ain't talking. */
		FUNC4(&audit_trigger_mtx);
		FUNC1(ti, M_AUDITTRIGGER);
		return (ENODEV);
	}
	ti->trigger = trigger;
	FUNC0(&trigger_list, ti, list);
	FUNC5(&trigger_list);
	FUNC4(&audit_trigger_mtx);
	return (0);
}