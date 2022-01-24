#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  os; int /*<<< orphan*/ ** domains; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_domain_t ;

/* Variables and functions */
 size_t SLI4_MAX_FCFI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t,size_t) ; 

ocs_domain_t *
FUNC2(ocs_hw_t *hw, uint16_t fcfi)
{

	if (hw == NULL) {
		FUNC0(NULL, "bad parameter hw=%p\n", hw);
		return NULL;
	}

	if (fcfi < SLI4_MAX_FCFI) {
		return hw->domains[fcfi];
	} else {
		FUNC1(hw->os, "FCFI %#x out of range (max %#x)\n",
				fcfi, SLI4_MAX_FCFI);
		return NULL;
	}
}