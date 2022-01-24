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
typedef  int u_int ;
struct mii_attach_args {int /*<<< orphan*/  mii_id2; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MIIF_MACPRIV0 ; 
 int MIIF_NOISOLATE ; 
 int MIIF_NOMANPAUSE ; 
 int MIIF_PHYPRIV0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MII_MODEL_xxICPLUS_IP1000A ; 
 struct mii_attach_args* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip1000phy_funcs ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct mii_attach_args *ma;
	u_int flags;

	ma = FUNC1(dev);
	flags = MIIF_NOISOLATE | MIIF_NOMANPAUSE;
	if (FUNC0(ma->mii_id2) == MII_MODEL_xxICPLUS_IP1000A &&
	     FUNC2(dev, "stge") &&
	     (FUNC4(dev) & MIIF_MACPRIV0) != 0)
		flags |= MIIF_PHYPRIV0;
	FUNC3(dev, flags, &ip1000phy_funcs, 1);
	return (0);
}