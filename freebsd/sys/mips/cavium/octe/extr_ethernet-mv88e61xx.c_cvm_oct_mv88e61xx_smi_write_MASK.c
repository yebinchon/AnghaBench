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
struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_id; } ;
typedef  TYPE_1__ cvm_oct_private_t ;

/* Variables and functions */
 int MV88E61XX_SMI_CMD_22 ; 
 int MV88E61XX_SMI_CMD_BUSY ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int MV88E61XX_SMI_CMD_WRITE ; 
 int /*<<< orphan*/  MV88E61XX_SMI_REG_CMD ; 
 int /*<<< orphan*/  MV88E61XX_SMI_REG_DAT ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp, int phy_id, int location, int val)
{
	cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;

	FUNC3(ifp);
	FUNC2(ifp, priv->phy_id, MV88E61XX_SMI_REG_DAT, val);
	FUNC2(ifp, priv->phy_id, MV88E61XX_SMI_REG_CMD,
	    MV88E61XX_SMI_CMD_BUSY | MV88E61XX_SMI_CMD_22 |
	    MV88E61XX_SMI_CMD_WRITE | FUNC0(phy_id) |
	    FUNC1(location));
	FUNC3(ifp);
}