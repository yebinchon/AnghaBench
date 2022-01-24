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
struct syscon {scalar_t__ ofw_node; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct syscon*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct syscon*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  syscon_link ; 
 int /*<<< orphan*/  syscon_list ; 

struct syscon *
FUNC8(struct syscon *syscon)
{
	int rv;

#ifdef FDT
	if (syscon->ofw_node <= 0)
		syscon->ofw_node = ofw_bus_get_node(syscon->pdev);
	if (syscon->ofw_node <= 0)
		return (NULL);
#endif

	rv = FUNC2(syscon);
	if (rv != 0) {
		FUNC7("SYSCON_INIT failed: %d\n", rv);
		return (NULL);
	}

#ifdef FDT
	OF_device_register_xref(OF_xref_from_node(syscon->ofw_node),
	    syscon->pdev);
#endif
	FUNC4();
	FUNC5(&syscon_list, syscon, syscon_link);
	FUNC3();
	return (syscon);
}