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
typedef  int /*<<< orphan*/  u16 ;
struct mlxfw_mfa2_tlv_multi {int dummy; } ;
struct mlxfw_mfa2_tlv_component_ptr {int /*<<< orphan*/  component_index; } ;
struct mlxfw_mfa2_tlv_component_descriptor {int dummy; } ;
struct mlxfw_mfa2_tlv {int dummy; } ;
struct mlxfw_mfa2_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXFW_MFA2_TLV_COMPONENT_PTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mlxfw_mfa2_tlv_component_descriptor const* FUNC1 (struct mlxfw_mfa2_file const*,int /*<<< orphan*/ ) ; 
 struct mlxfw_mfa2_tlv_component_ptr* FUNC2 (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv const*) ; 
 struct mlxfw_mfa2_tlv_multi* FUNC3 (struct mlxfw_mfa2_file const*,char const*,int) ; 
 struct mlxfw_mfa2_tlv* FUNC4 (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv_multi const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static const struct mlxfw_mfa2_tlv_component_descriptor *
FUNC5(const struct mlxfw_mfa2_file *mfa2_file,
			       const char *psid, int psid_size,
			       int component_index)
{
	const struct mlxfw_mfa2_tlv_component_ptr *cptr;
	const struct mlxfw_mfa2_tlv_multi *dev_multi;
	const struct mlxfw_mfa2_tlv *cptr_tlv;
	u16 comp_idx;

	dev_multi = FUNC3(mfa2_file, psid, psid_size);
	if (!dev_multi)
		return NULL;

	cptr_tlv = FUNC4(mfa2_file, dev_multi,
						   MLXFW_MFA2_TLV_COMPONENT_PTR,
						   component_index);
	if (!cptr_tlv)
		return NULL;

	cptr = FUNC2(mfa2_file, cptr_tlv);
	if (!cptr)
		return NULL;

	comp_idx = FUNC0(cptr->component_index);
	return FUNC1(mfa2_file, comp_idx);
}