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
struct fail_point_setting {int /*<<< orphan*/  fp_entry_queue; } ;
struct fail_point_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fail_point_entry* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct fail_point_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fail_point_entry*) ; 
 int /*<<< orphan*/  fe_entries ; 
 int /*<<< orphan*/  FUNC4 (struct fail_point_setting*) ; 

__attribute__((used)) static void
FUNC5(struct fail_point_setting *fp_setting)
{
	struct fail_point_entry *ent;

	while (!FUNC0(&fp_setting->fp_entry_queue)) {
		ent = FUNC1(&fp_setting->fp_entry_queue);
		FUNC2(&fp_setting->fp_entry_queue, ent, fe_entries);
		FUNC3(ent);
	}

	FUNC4(fp_setting);
}