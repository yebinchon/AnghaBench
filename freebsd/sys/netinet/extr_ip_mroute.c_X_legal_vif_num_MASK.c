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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int V_numvifs ; 

__attribute__((used)) static int
FUNC2(int vif)
{
	int ret;

	ret = 0;
	if (vif < 0)
		return (ret);

	FUNC0();
	if (vif < V_numvifs)
		ret = 1;
	FUNC1();

	return (ret);
}