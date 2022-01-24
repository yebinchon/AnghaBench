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
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
#define  ENOENT 129 
#define  ENXIO 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  le_isa_ids ; 
 TYPE_1__* le_isa_params ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	int i;

	switch (FUNC0(FUNC1(dev), dev, le_isa_ids)) {
	case 0:
		return (BUS_PROBE_DEFAULT);
	case ENOENT:
		for (i = 0; i < FUNC4(le_isa_params); i++) {
			if (FUNC3(dev, &le_isa_params[i]) == 0) {
				FUNC2(dev, le_isa_params[i].name);
				return (BUS_PROBE_DEFAULT);
			}
		}
		/* FALLTHROUGH */
	case ENXIO:
	default:
		return (ENXIO);
	}
}