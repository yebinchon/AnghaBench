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
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bhnd_devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_DEVCLASS_PCI ; 
 int /*<<< orphan*/  BHND_DEVCLASS_PCIE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bhnd_devclass_t
FUNC1(device_t dev)
{
	if (FUNC0(dev))
		return (BHND_DEVCLASS_PCIE);
	else
		return (BHND_DEVCLASS_PCI);
}