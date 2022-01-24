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
struct device_map_entry {struct device_map_entry* location_key; struct device_map_entry* name_key; int /*<<< orphan*/ * entry_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct device_map_entry* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * devd_fd ; 
 int devd_sock ; 
 int /*<<< orphan*/  device_map ; 
 int /*<<< orphan*/  device_tbl ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device_map_entry*) ; 
 int /*<<< orphan*/  link ; 

void
FUNC10(void)
{
	struct device_map_entry *n1;

	if (devd_fd != NULL)
		FUNC8(devd_fd);

	if (devd_sock != -1)
		(void)FUNC6(devd_sock);

	FUNC7();

     	while ((n1 = FUNC1(&device_map)) != NULL) {
		FUNC2(&device_map, link);
		if (n1->entry_p != NULL) {
			FUNC4(&device_tbl, n1->entry_p, link);
			FUNC0(n1->entry_p);
		}
		FUNC9(n1->name_key);
		FUNC9(n1->location_key);
		FUNC9(n1);
     	}
	FUNC5(FUNC3(&device_tbl));
}