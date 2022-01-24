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
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_4__ {int rm_end; char* rm_descr; scalar_t__ rm_start; int /*<<< orphan*/  rm_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  RMAN_ARRAY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ cpu_hardirq_rman ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	int error;
#ifdef notyet
	device_t clock;
#endif

	cpu_hardirq_rman.rm_start = 0;
	cpu_hardirq_rman.rm_end = 5;
	cpu_hardirq_rman.rm_type = RMAN_ARRAY;
	cpu_hardirq_rman.rm_descr = "CPU Hard Interrupts";

	error = FUNC6(&cpu_hardirq_rman);
	if (error != 0) {
		FUNC3(dev, "failed to initialize irq resources\n");
		return (error);
	}
	/* XXX rman_manage_all. */
	error = FUNC7(&cpu_hardirq_rman,
				   cpu_hardirq_rman.rm_start,
				   cpu_hardirq_rman.rm_end);
	if (error != 0) {
		FUNC3(dev, "failed to manage irq resources\n");
		return (error);
	}

	if (FUNC2(dev) != 0)
		FUNC5("can't attach more cpus");
	FUNC4(dev, "MIPS32 processor");

#ifdef notyet
	clock = device_add_child(dev, "clock", device_get_unit(dev));
	if (clock == NULL)
		device_printf(dev, "clock failed to attach");
#endif

	return (FUNC0(dev));
}