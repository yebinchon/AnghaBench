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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MSR_AMDK7_FIDVID_STATUS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(uint64_t *status)
{
	int i = 10000;

	do
		*status = FUNC1(MSR_AMDK7_FIDVID_STATUS);
	while (FUNC0(*status) && --i);

	return (i == 0 ? ENXIO : 0);
}