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
typedef  size_t uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 TYPE_1__* bridge_pf_sysctl ; 
 int /*<<< orphan*/  bridge_sysctl ; 
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(void)
{
	uint8_t i;

	for (i = 0; i < FUNC0(bridge_pf_sysctl); i++) {
		FUNC1(LOG_ERR, "%s%s = %d", bridge_sysctl,
		    bridge_pf_sysctl[i].name, bridge_pf_sysctl[i].val);
	}
}