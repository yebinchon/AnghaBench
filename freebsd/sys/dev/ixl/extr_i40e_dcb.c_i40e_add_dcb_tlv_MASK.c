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
struct i40e_lldp_org_tlv {int dummy; } ;
struct i40e_dcbx_config {int dummy; } ;

/* Variables and functions */
#define  I40E_IEEE_TLV_ID_APP_PRI 131 
#define  I40E_IEEE_TLV_ID_ETS_CFG 130 
#define  I40E_IEEE_TLV_ID_ETS_REC 129 
#define  I40E_IEEE_TLV_ID_PFC_CFG 128 
 int /*<<< orphan*/  FUNC0 (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ; 

__attribute__((used)) static void FUNC4(struct i40e_lldp_org_tlv *tlv,
			     struct i40e_dcbx_config *dcbcfg,
			     u16 tlvid)
{
	switch (tlvid) {
	case I40E_IEEE_TLV_ID_ETS_CFG:
		FUNC1(tlv, dcbcfg);
		break;
	case I40E_IEEE_TLV_ID_ETS_REC:
		FUNC2(tlv, dcbcfg);
		break;
	case I40E_IEEE_TLV_ID_PFC_CFG:
		FUNC3(tlv, dcbcfg);
		break;
	case I40E_IEEE_TLV_ID_APP_PRI:
		FUNC0(tlv, dcbcfg);
		break;
	default:
		break;
	}
}