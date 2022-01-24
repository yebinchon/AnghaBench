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
typedef  scalar_t__ u16 ;
struct mlxfw_mfa2_tlv_multi {int dummy; } ;
struct mlxfw_mfa2_tlv_component_descriptor {int dummy; } ;
struct mlxfw_mfa2_tlv {int dummy; } ;
struct mlxfw_mfa2_file {scalar_t__ component_count; int /*<<< orphan*/  first_component; } ;

/* Variables and functions */
 struct mlxfw_mfa2_tlv* FUNC0 (struct mlxfw_mfa2_file const*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct mlxfw_mfa2_tlv_component_descriptor const* FUNC1 (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv const*) ; 
 struct mlxfw_mfa2_tlv* FUNC2 (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv_multi const*) ; 
 struct mlxfw_mfa2_tlv_multi* FUNC3 (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv const*) ; 

__attribute__((used)) static const struct mlxfw_mfa2_tlv_component_descriptor *
FUNC4(const struct mlxfw_mfa2_file *mfa2_file,
				  u16 comp_index)
{
	const struct mlxfw_mfa2_tlv_multi *multi;
	const struct mlxfw_mfa2_tlv *multi_child;
	const struct mlxfw_mfa2_tlv *comp_tlv;

	if (comp_index > mfa2_file->component_count)
		return NULL;

	comp_tlv = FUNC0(mfa2_file, mfa2_file->first_component,
					  comp_index);
	if (!comp_tlv)
		return NULL;

	multi = FUNC3(mfa2_file, comp_tlv);
	if (!multi)
		return NULL;

	multi_child = FUNC2(mfa2_file, multi);
	if (!multi_child)
		return NULL;

	return FUNC1(mfa2_file, multi_child);
}