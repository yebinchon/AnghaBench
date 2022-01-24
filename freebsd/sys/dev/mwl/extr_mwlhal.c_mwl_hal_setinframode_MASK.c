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
struct mwl_hal_vap {int dummy; } ;
struct mwl_hal_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HostCmd_CMD_SET_INFRA_MODE ; 
 int HostCmd_FW_SET_INFRA_MODE ; 
 struct mwl_hal_priv* FUNC0 (struct mwl_hal_vap*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl_hal_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwl_hal_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwl_hal_vap*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mwl_hal_priv*,int /*<<< orphan*/ ) ; 
 int pCmd ; 

int
FUNC5(struct mwl_hal_vap *vap)
{
	struct mwl_hal_priv *mh = FUNC0(vap);
	HostCmd_FW_SET_INFRA_MODE *pCmd;
	int retval;

	FUNC1(mh);
	FUNC3(vap, pCmd, HostCmd_FW_SET_INFRA_MODE,
		HostCmd_CMD_SET_INFRA_MODE);

	retval = FUNC4(mh, HostCmd_CMD_SET_INFRA_MODE);
	FUNC2(mh);
	return retval;
}