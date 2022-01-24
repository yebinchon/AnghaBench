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
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  ocd_data; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int /*<<< orphan*/  EHCI_HC_DEVSTR ; 
 int ENXIO ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t self)
{

	if (!FUNC2(self))
		return (ENXIO);

	if (!FUNC1(self, compat_data)->ocd_data)
		return (ENXIO);

	FUNC0(self, EHCI_HC_DEVSTR);

	return (BUS_PROBE_DEFAULT);
}