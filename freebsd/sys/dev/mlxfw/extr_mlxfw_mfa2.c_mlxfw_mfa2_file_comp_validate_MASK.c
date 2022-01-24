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
typedef  int uintmax_t ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlxfw_mfa2_tlv_multi {int dummy; } ;
struct mlxfw_mfa2_tlv_component_descriptor {int /*<<< orphan*/  size; int /*<<< orphan*/  cb_offset_l; int /*<<< orphan*/  cb_offset_h; int /*<<< orphan*/  identifier; } ;
struct mlxfw_mfa2_tlv {int dummy; } ;
struct mlxfw_mfa2_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct mlxfw_mfa2_tlv_component_descriptor* FUNC2 (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv const*) ; 
 struct mlxfw_mfa2_tlv* FUNC3 (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv_multi const*) ; 
 struct mlxfw_mfa2_tlv_multi* FUNC4 (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv const*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv_multi const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC8(const struct mlxfw_mfa2_file *mfa2_file,
			      const struct mlxfw_mfa2_tlv *comp_tlv,
			      u16 comp_idx)
{
	const struct mlxfw_mfa2_tlv_component_descriptor *cdesc;
	const struct mlxfw_mfa2_tlv_multi *multi;
	const struct mlxfw_mfa2_tlv *tlv;

	FUNC6("Component %d\n", comp_idx);

	multi = FUNC4(mfa2_file, comp_tlv);
	if (!multi) {
		FUNC7("Component %d is not a valid TLV error\n", comp_idx);
		return false;
	}

	if (!FUNC5(mfa2_file, multi))
		return false;

	/* Check that component have COMPONENT_DESCRIPTOR as first child */
	tlv = FUNC3(mfa2_file, multi);
	if (!tlv) {
		FUNC7("Component descriptor %d multi TLV error\n", comp_idx);
		return false;
	}

	cdesc = FUNC2(mfa2_file, tlv);
	if (!cdesc) {
		FUNC7("Component %d does not have a valid descriptor\n",
		       comp_idx);
		return false;
	}
	FUNC6("  -- Component type %d\n", FUNC0(cdesc->identifier));
	FUNC6("  -- Offset %#jx and size %d\n",
		 (uintmax_t)((u64) FUNC1(cdesc->cb_offset_h) << 32)
		 | FUNC1(cdesc->cb_offset_l), FUNC1(cdesc->size));

	return true;
}