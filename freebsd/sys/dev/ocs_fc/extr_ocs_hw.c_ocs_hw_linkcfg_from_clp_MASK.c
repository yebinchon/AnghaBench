#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  ocs_hw_linkcfg_e ;
struct TYPE_3__ {int /*<<< orphan*/  linkcfg; int /*<<< orphan*/  clp_str; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  OCS_HW_LINKCFG_NA ; 
 TYPE_1__* linkcfg_map ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ocs_hw_linkcfg_e
FUNC3(const char *clp_str)
{
	uint32_t i;
	for (i = 0; i < FUNC0(linkcfg_map); i++) {
		if (FUNC2(linkcfg_map[i].clp_str, clp_str, FUNC1(clp_str)) == 0) {
			return linkcfg_map[i].linkcfg;
		}
	}
	return OCS_HW_LINKCFG_NA;
}