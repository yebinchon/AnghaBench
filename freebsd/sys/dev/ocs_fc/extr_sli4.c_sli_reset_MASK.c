#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_8__ {TYPE_1__* extent; } ;
struct TYPE_9__ {TYPE_2__ config; int /*<<< orphan*/  os; } ;
typedef  TYPE_3__ sli4_t ;
typedef  int int32_t ;
struct TYPE_7__ {int /*<<< orphan*/ * base; int /*<<< orphan*/ * use_map; } ;

/* Variables and functions */
 int SLI_RSRC_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 

int32_t
FUNC5(sli4_t *sli4)
{
	uint32_t	i;

	if (FUNC3(sli4)) {
		FUNC2(sli4->os, "FW initialization failed\n");
		return -1;
	}

	if (sli4->config.extent[0].base) {
		FUNC1(sli4->os, sli4->config.extent[0].base, SLI_RSRC_MAX * sizeof(uint32_t));
		sli4->config.extent[0].base = NULL;
	}

	for (i = 0; i < SLI_RSRC_MAX; i++) {
		if (sli4->config.extent[i].use_map) {
			FUNC0(sli4->config.extent[i].use_map);
			sli4->config.extent[i].use_map = NULL;
		}
		sli4->config.extent[i].base = NULL;
	}

	if (FUNC4(sli4)) {
		return -1;
	}

	return 0;
}