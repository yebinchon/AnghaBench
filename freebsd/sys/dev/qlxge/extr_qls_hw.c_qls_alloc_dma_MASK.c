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
typedef  int /*<<< orphan*/  qla_host_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(qla_host_t *ha)
{
	if (FUNC2(ha))
		return (-1);

	if (FUNC3(ha)) {
		FUNC5(ha);
		return (-1);
	}

	if (FUNC0(ha)) {
		FUNC6(ha);
		FUNC5(ha);
		return (-1);
	}

	if (FUNC1(ha)) {
		FUNC4(ha);
		FUNC6(ha);
		FUNC5(ha);
		return (-1);
	}

	return (0);
}