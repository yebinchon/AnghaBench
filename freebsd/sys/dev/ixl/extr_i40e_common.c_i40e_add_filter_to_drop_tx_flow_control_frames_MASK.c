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
typedef  int u16 ;
struct i40e_hw {int dummy; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int I40E_AQC_ADD_CONTROL_PACKET_FLAGS_DROP ; 
 int I40E_AQC_ADD_CONTROL_PACKET_FLAGS_IGNORE_MAC ; 
 int I40E_AQC_ADD_CONTROL_PACKET_FLAGS_TX ; 
 int I40E_FLOW_CONTROL_ETHTYPE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (struct i40e_hw*,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct i40e_hw *hw,
						    u16 seid)
{
#define I40E_FLOW_CONTROL_ETHTYPE 0x8808
	u16 flag = I40E_AQC_ADD_CONTROL_PACKET_FLAGS_IGNORE_MAC |
		   I40E_AQC_ADD_CONTROL_PACKET_FLAGS_DROP |
		   I40E_AQC_ADD_CONTROL_PACKET_FLAGS_TX;
	u16 ethtype = I40E_FLOW_CONTROL_ETHTYPE;
	enum i40e_status_code status;

	status = FUNC1(hw, NULL, ethtype, flag,
						       seid, 0, TRUE, NULL,
						       NULL);
	if (status)
		FUNC0("Ethtype Filter Add failed: Error pruning Tx flow control frames\n");
}