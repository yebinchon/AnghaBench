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
struct syscon {int /*<<< orphan*/  ofw_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct syscon*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct syscon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  syscon_link ; 
 int /*<<< orphan*/  syscon_list ; 

int
FUNC6(struct syscon *syscon)
{

	FUNC3();
	FUNC5(&syscon_list, syscon, syscon_link);
	FUNC2();
#ifdef FDT
	OF_device_register_xref(OF_xref_from_node(syscon->ofw_node), NULL);
#endif
	return (FUNC4(syscon));
}