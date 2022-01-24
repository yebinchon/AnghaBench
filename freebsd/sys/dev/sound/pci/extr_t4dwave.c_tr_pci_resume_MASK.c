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
struct TYPE_3__ {scalar_t__ was_active; } ;
struct tr_info {int playchns; TYPE_1__ recchinfo; TYPE_2__* chinfo; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {scalar_t__ was_active; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  PCMTRIG_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct tr_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tr_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	int i;
	struct tr_info *tr;

	tr = FUNC2(dev);

	if (FUNC3(tr) == -1) {
		FUNC0(dev, "unable to initialize the card\n");
		return ENXIO;
	}

	if (FUNC1(dev) == -1) {
		FUNC0(dev, "unable to initialize the mixer\n");
		return ENXIO;
	}

	for (i = 0; i < tr->playchns; i++) {
		if (tr->chinfo[i].was_active) {
			FUNC4(NULL, &tr->chinfo[i], PCMTRIG_START);
		}
	}

	if (tr->recchinfo.was_active) {
		FUNC5(NULL, &tr->recchinfo, PCMTRIG_START);
	}

	return 0;
}