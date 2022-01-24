#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {char* rm_descr; void* rm_type; int /*<<< orphan*/  rm_end; scalar_t__ rm_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 void* RMAN_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ irq_rman ; 
 TYPE_1__ mem_rman ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{

	mem_rman.rm_start = 0;
	mem_rman.rm_end = BUS_SPACE_MAXADDR;
	mem_rman.rm_type = RMAN_ARRAY;
	mem_rman.rm_descr = "I/O memory addresses";
	if (FUNC4(&mem_rman) ||
	    FUNC5(&mem_rman, 0, BUS_SPACE_MAXADDR))
		FUNC3("nexus_attach mem_rman");
	irq_rman.rm_start = 0;
	irq_rman.rm_end = ~0;
	irq_rman.rm_type = RMAN_ARRAY;
	irq_rman.rm_descr = "Interrupts";
	if (FUNC4(&irq_rman) || FUNC5(&irq_rman, 0, ~0))
		FUNC3("nexus_attach irq_rman");

	FUNC2(dev, 8, "timer", 0);
	FUNC2(dev, 9, "rcons", 0);
	FUNC2(dev, 10, "ofwbus", 0);

	FUNC1(dev);
	FUNC0(dev);

	return (0);
}