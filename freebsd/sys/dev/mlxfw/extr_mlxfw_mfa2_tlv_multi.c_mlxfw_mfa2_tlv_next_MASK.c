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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct mlxfw_mfa2_tlv_multi {int /*<<< orphan*/  total_len; } ;
struct mlxfw_mfa2_tlv {scalar_t__ type; } ;
struct mlxfw_mfa2_file {int dummy; } ;

/* Variables and functions */
 scalar_t__ MLXFW_MFA2_TLV_MULTI_PART ; 
 int FUNC0 (struct mlxfw_mfa2_tlv const*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct mlxfw_mfa2_tlv const* FUNC3 (struct mlxfw_mfa2_file const*,int /*<<< orphan*/  const*) ; 
 struct mlxfw_mfa2_tlv_multi* FUNC4 (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv const*) ; 

const struct mlxfw_mfa2_tlv *
FUNC5(const struct mlxfw_mfa2_file *mfa2_file,
		    const struct mlxfw_mfa2_tlv *tlv)
{
	const struct mlxfw_mfa2_tlv_multi *multi;
	u16 tlv_len;
	const u8 *next;

	tlv_len = FUNC0(tlv);

	if (tlv->type == MLXFW_MFA2_TLV_MULTI_PART) {
		multi = FUNC4(mfa2_file, tlv);
		tlv_len = FUNC1(tlv_len + FUNC2(multi->total_len));
	}

	next = (const u8 *) tlv + tlv_len;
	return FUNC3(mfa2_file, next);
}