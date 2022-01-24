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
typedef  scalar_t__ u8 ;
struct mlxfw_mfa2_tlv {scalar_t__ type; void const* data; int /*<<< orphan*/  len; } ;
struct mlxfw_mfa2_file {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxfw_mfa2_file const*,scalar_t__ const*) ; 

__attribute__((used)) static inline const void *
FUNC2(const struct mlxfw_mfa2_file *mfa2_file,
			   const struct mlxfw_mfa2_tlv *tlv, u8 payload_type,
			   size_t payload_size, bool varsize)
{
	const u8 *tlv_top;

	tlv_top = (const u8 *) tlv + FUNC0(tlv->len) - 1;
	if (!FUNC1(mfa2_file, (const u8 *) tlv) ||
	    !FUNC1(mfa2_file, tlv_top))
		return NULL;
	if (tlv->type != payload_type)
		return NULL;
	if (varsize && (FUNC0(tlv->len) < payload_size))
		return NULL;
	if (!varsize && (FUNC0(tlv->len) != payload_size))
		return NULL;

	return tlv->data;
}