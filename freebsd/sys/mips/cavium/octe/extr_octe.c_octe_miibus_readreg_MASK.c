#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int (* mdio_read ) (int /*<<< orphan*/ ,int,int) ;int phy_id; int /*<<< orphan*/  ifp; } ;
typedef  TYPE_1__ cvm_oct_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, int phy, int reg)
{
	cvm_oct_private_t *priv;

	priv = FUNC2(dev);

	/*
	 * Try interface-specific MII routine.
	 */
	if (priv->mdio_read != NULL)
		return (priv->mdio_read(priv->ifp, phy, reg));

	/*
	 * Try generic MII routine.
	 */
	FUNC0(phy == priv->phy_id,
	    ("read from phy %u but our phy is %u", phy, priv->phy_id));
	return (FUNC1(priv->ifp, phy, reg));
}