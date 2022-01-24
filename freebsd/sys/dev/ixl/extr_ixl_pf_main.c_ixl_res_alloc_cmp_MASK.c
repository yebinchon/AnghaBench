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
struct i40e_aqc_switch_resource_alloc_element_resp {scalar_t__ resource_type; } ;

/* Variables and functions */

int
FUNC0(const void *a, const void *b)
{
	const struct i40e_aqc_switch_resource_alloc_element_resp *one, *two;
	one = (const struct i40e_aqc_switch_resource_alloc_element_resp *)a;
	two = (const struct i40e_aqc_switch_resource_alloc_element_resp *)b;

	return ((int)one->resource_type - (int)two->resource_type);
}