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
typedef  int u8 ;
typedef  int u32 ;
struct i40e_lldp_org_tlv {int /*<<< orphan*/  ouisubtype; } ;
struct i40e_dcbx_config {int dummy; } ;

/* Variables and functions */
#define  I40E_IEEE_SUBTYPE_APP_PRI 131 
#define  I40E_IEEE_SUBTYPE_ETS_CFG 130 
#define  I40E_IEEE_SUBTYPE_ETS_REC 129 
#define  I40E_IEEE_SUBTYPE_PFC_CFG 128 
 int I40E_LLDP_TLV_SUBTYPE_MASK ; 
 int I40E_LLDP_TLV_SUBTYPE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ; 

__attribute__((used)) static void FUNC5(struct i40e_lldp_org_tlv *tlv,
				struct i40e_dcbx_config *dcbcfg)
{
	u32 ouisubtype;
	u8 subtype;

	ouisubtype = FUNC0(tlv->ouisubtype);
	subtype = (u8)((ouisubtype & I40E_LLDP_TLV_SUBTYPE_MASK) >>
		       I40E_LLDP_TLV_SUBTYPE_SHIFT);
	switch (subtype) {
	case I40E_IEEE_SUBTYPE_ETS_CFG:
		FUNC2(tlv, dcbcfg);
		break;
	case I40E_IEEE_SUBTYPE_ETS_REC:
		FUNC3(tlv, dcbcfg);
		break;
	case I40E_IEEE_SUBTYPE_PFC_CFG:
		FUNC4(tlv, dcbcfg);
		break;
	case I40E_IEEE_SUBTYPE_APP_PRI:
		FUNC1(tlv, dcbcfg);
		break;
	default:
		break;
	}
}