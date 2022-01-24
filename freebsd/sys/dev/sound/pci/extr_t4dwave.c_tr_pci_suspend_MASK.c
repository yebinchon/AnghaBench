#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ active; scalar_t__ was_active; } ;
struct tr_info {int playchns; TYPE_1__ recchinfo; TYPE_2__* chinfo; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {scalar_t__ active; scalar_t__ was_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCMTRIG_STOP ; 
 struct tr_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	int i;
	struct tr_info *tr;

	tr = FUNC0(dev);

	for (i = 0; i < tr->playchns; i++) {
		tr->chinfo[i].was_active = tr->chinfo[i].active;
		if (tr->chinfo[i].active) {
			FUNC1(NULL, &tr->chinfo[i], PCMTRIG_STOP);
		}
	}

	tr->recchinfo.was_active = tr->recchinfo.active;
	if (tr->recchinfo.active) {
		FUNC2(NULL, &tr->recchinfo, PCMTRIG_STOP);
	}

	return 0;
}