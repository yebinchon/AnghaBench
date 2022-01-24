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
struct sbuf {int dummy; } ;
struct i40e_aqc_switch_config_element_resp {int element_type; int /*<<< orphan*/  element_info; } ;

/* Variables and functions */
#define  I40E_AQ_SW_ELEM_TYPE_BMC 136 
#define  I40E_AQ_SW_ELEM_TYPE_EMP 135 
#define  I40E_AQ_SW_ELEM_TYPE_MAC 134 
#define  I40E_AQ_SW_ELEM_TYPE_PA 133 
#define  I40E_AQ_SW_ELEM_TYPE_PF 132 
#define  I40E_AQ_SW_ELEM_TYPE_PV 131 
#define  I40E_AQ_SW_ELEM_TYPE_VEB 130 
#define  I40E_AQ_SW_ELEM_TYPE_VF 129 
#define  I40E_AQ_SW_ELEM_TYPE_VSI 128 
 int /*<<< orphan*/  FUNC0 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 char* FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,char*,int /*<<< orphan*/ ) ; 

char *
FUNC5(struct sbuf *s,
    struct i40e_aqc_switch_config_element_resp *element)
{
	FUNC1(s);

	switch (element->element_type) {
	case I40E_AQ_SW_ELEM_TYPE_MAC:
		FUNC4(s, "MAC %3d", element->element_info);
		break;
	case I40E_AQ_SW_ELEM_TYPE_PF:
		FUNC4(s, "PF  %3d", element->element_info);
		break;
	case I40E_AQ_SW_ELEM_TYPE_VF:
		FUNC4(s, "VF  %3d", element->element_info);
		break;
	case I40E_AQ_SW_ELEM_TYPE_EMP:
		FUNC0(s, "EMP");
		break;
	case I40E_AQ_SW_ELEM_TYPE_BMC:
		FUNC0(s, "BMC");
		break;
	case I40E_AQ_SW_ELEM_TYPE_PV:
		FUNC0(s, "PV");
		break;
	case I40E_AQ_SW_ELEM_TYPE_VEB:
		FUNC0(s, "VEB");
		break;
	case I40E_AQ_SW_ELEM_TYPE_PA:
		FUNC0(s, "PA");
		break;
	case I40E_AQ_SW_ELEM_TYPE_VSI:
		FUNC4(s, "VSI %3d", element->element_info);
		break;
	default:
		FUNC0(s, "?");
		break;
	}

	FUNC3(s);
	return FUNC2(s);
}