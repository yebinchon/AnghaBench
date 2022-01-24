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
 int /*<<< orphan*/  MIIF_NOISOLATE ; 
 int /*<<< orphan*/  MIIF_NOMANPAUSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  nsphy_funcs ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	u_int flags;

	flags = MIIF_NOMANPAUSE;
	/*
	 * Am79C971 wedge when isolating all of their external PHYs.
	 */
	if (FUNC0(dev,"pcn"))
		flags |= MIIF_NOISOLATE;
	FUNC1(dev, flags, &nsphy_funcs, 1);
	return (0);
}