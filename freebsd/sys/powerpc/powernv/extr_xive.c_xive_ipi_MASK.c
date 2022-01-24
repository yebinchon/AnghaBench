#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {scalar_t__ trig_page; } ;
struct xive_cpu {TYPE_1__ ipi_data; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct xive_cpu* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xive_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(device_t dev, u_int cpu)
{
	struct xive_cpu *xive_cpud;

	xive_cpud = FUNC0(cpu, xive_cpu_data);

	if (xive_cpud->ipi_data.trig_page == 0)
		return;
	FUNC1(xive_cpud->ipi_data.trig_page, 0);
}