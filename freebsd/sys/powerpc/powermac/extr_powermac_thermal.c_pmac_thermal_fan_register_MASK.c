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
struct pmac_fan_le {struct pmac_fan* fan; } ;
struct pmac_fan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PMACTHERM ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pmac_fan_le*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  fans ; 
 struct pmac_fan_le* FUNC1 (int,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct pmac_fan *fan)
{
	struct pmac_fan_le *list_entry;

	list_entry = FUNC1(sizeof(struct pmac_fan_le), M_PMACTHERM,
	    M_ZERO | M_WAITOK);
	list_entry->fan = fan;

	FUNC0(&fans, list_entry, entries);
}