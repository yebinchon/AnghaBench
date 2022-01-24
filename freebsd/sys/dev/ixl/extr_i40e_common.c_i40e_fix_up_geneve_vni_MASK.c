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
typedef  int u16 ;
struct i40e_aqc_add_remove_cloud_filters_element_data {int /*<<< orphan*/  tenant_id; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I40E_AQC_ADD_CLOUD_TNL_TYPE_GENEVE ; 
 int I40E_AQC_ADD_CLOUD_TNL_TYPE_MASK ; 
 int I40E_AQC_ADD_CLOUD_TNL_TYPE_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
	struct i40e_aqc_add_remove_cloud_filters_element_data *filters,
	u8 filter_count)
{
	struct i40e_aqc_add_remove_cloud_filters_element_data *f = filters;
	int i;

	for (i = 0; i < filter_count; i++) {
		u16 tnl_type;
		u32 ti;

		tnl_type = (FUNC1(f[i].flags) &
			   I40E_AQC_ADD_CLOUD_TNL_TYPE_MASK) >>
			   I40E_AQC_ADD_CLOUD_TNL_TYPE_SHIFT;
		if (tnl_type == I40E_AQC_ADD_CLOUD_TNL_TYPE_GENEVE) {
			ti = FUNC2(f[i].tenant_id);
			f[i].tenant_id = FUNC0(ti << 8);
		}
	}
}