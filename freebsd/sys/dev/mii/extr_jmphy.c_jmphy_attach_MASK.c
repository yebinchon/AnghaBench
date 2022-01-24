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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MIIF_MACPRIV0 ; 
 int /*<<< orphan*/  MIIF_PHYPRIV0 ; 
 int /*<<< orphan*/  jmphy_funcs ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	u_int flags;

	flags = 0;
	if (FUNC0(dev, "jme") &&
	    (FUNC2(dev) & MIIF_MACPRIV0) != 0)
		flags |= MIIF_PHYPRIV0;
	FUNC1(dev, flags, &jmphy_funcs, 1);
	return (0);
}