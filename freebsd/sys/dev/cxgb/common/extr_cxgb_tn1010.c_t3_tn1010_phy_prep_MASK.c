#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mdio_ops {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  adapter; int /*<<< orphan*/  phy; } ;
typedef  TYPE_1__ pinfo_t ;

/* Variables and functions */
 int SUPPORTED_10000baseT_Full ; 
 int SUPPORTED_1000baseT_Full ; 
 int SUPPORTED_AUI ; 
 int SUPPORTED_Autoneg ; 
 int SUPPORTED_TP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *,struct mdio_ops const*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  tn1010_ops ; 

int FUNC2(pinfo_t *pinfo, int phy_addr,
		       const struct mdio_ops *mdio_ops)
{
	FUNC0(&pinfo->phy, pinfo->adapter, pinfo, phy_addr, &tn1010_ops, mdio_ops,
		  SUPPORTED_1000baseT_Full | SUPPORTED_10000baseT_Full |
		  SUPPORTED_Autoneg | SUPPORTED_AUI | SUPPORTED_TP,
		  "1000/10GBASE-T");
	FUNC1(500);    /* PHY needs up to 500ms to start responding to MDIO */
	return 0;
}