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
typedef  int u_int32_t ;
struct agg_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_ACPI_STOPCLOCK ; 
 int PCI_POWERSTATE_D1 ; 
 int PCI_POWERSTATE_D2 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC2(struct agg_info *ess, int part, int st)
{
	u_int32_t data;

	data = FUNC0(ess->dev, CONF_ACPI_STOPCLOCK, 4);
	if (part < 16) {
		if (st == PCI_POWERSTATE_D1)
			data &= ~(1 << part);
		else
			data |= (1 << part);
		if (st == PCI_POWERSTATE_D1 || st == PCI_POWERSTATE_D2)
			data |= (0x10000 << part);
		else
			data &= ~(0x10000 << part);
		FUNC1(ess->dev, CONF_ACPI_STOPCLOCK, data, 4);
	}
}