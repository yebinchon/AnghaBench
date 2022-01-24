#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ UINT_MAX ; 
 scalar_t__ first_msi_irq ; 
 int /*<<< orphan*/  msi_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ num_io_irqs ; 
 scalar_t__ num_msi_irqs ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3(void)
{

	FUNC0(num_io_irqs > 0);
	first_msi_irq = num_io_irqs;
	if (num_msi_irqs > UINT_MAX - first_msi_irq)
		FUNC2("num_msi_irqs too high");
	num_io_irqs = first_msi_irq + num_msi_irqs;

	FUNC1(&msi_lock, "msi", NULL, MTX_DEF);
}