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
typedef  int /*<<< orphan*/  platform_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  model ;

/* Variables and functions */
 int BUS_PROBE_SPECIFIC ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(platform_t plat)
{
	phandle_t rootnode;
	char model[32];

	rootnode = FUNC0("/");

	if (FUNC1(rootnode, "model", model, sizeof(model)) > 0) {
		if (FUNC2(model, "RB800") == 0)
			return (BUS_PROBE_SPECIFIC);
	}

	return (ENXIO);
}