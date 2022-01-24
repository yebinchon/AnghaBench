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
struct mlxfw_mfa2_tlv_package_descriptor {int /*<<< orphan*/  cb_archive_size; int /*<<< orphan*/  cb_offset; int /*<<< orphan*/  num_components; int /*<<< orphan*/  num_devices; } ;
struct mlxfw_mfa2_tlv_multi {int dummy; } ;
struct mlxfw_mfa2_tlv {int dummy; } ;
struct mlxfw_mfa2_file {int cb_archive_size; int /*<<< orphan*/  const* cb; void* component_count; void* dev_count; int /*<<< orphan*/  first_dev; int /*<<< orphan*/  first_component; struct firmware const* fw; } ;
struct firmware {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct mlxfw_mfa2_file* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct mlxfw_mfa2_file* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxfw_mfa2_file*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxfw_mfa2_file*) ; 
 int mlxfw_mfa2_fingerprint_len ; 
 int /*<<< orphan*/  FUNC7 (struct mlxfw_mfa2_file*,int /*<<< orphan*/ ,void*) ; 
 struct mlxfw_mfa2_tlv* FUNC8 (struct mlxfw_mfa2_file*,int /*<<< orphan*/  const*) ; 
 struct mlxfw_mfa2_tlv* FUNC9 (struct mlxfw_mfa2_file*,struct mlxfw_mfa2_tlv_multi const*) ; 
 struct mlxfw_mfa2_tlv_multi* FUNC10 (struct mlxfw_mfa2_file*,struct mlxfw_mfa2_tlv const*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlxfw_mfa2_file*,struct mlxfw_mfa2_tlv const*) ; 
 struct mlxfw_mfa2_tlv_package_descriptor* FUNC12 (struct mlxfw_mfa2_file*,struct mlxfw_mfa2_tlv const*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlxfw_mfa2_file*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

struct mlxfw_mfa2_file *FUNC15(const struct firmware *fw)
{
	const struct mlxfw_mfa2_tlv_package_descriptor *pd;
	const struct mlxfw_mfa2_tlv_multi *multi;
	const struct mlxfw_mfa2_tlv *multi_child;
	const struct mlxfw_mfa2_tlv *first_tlv;
	struct mlxfw_mfa2_file *mfa2_file;
	const u8 *first_tlv_ptr;
	const u8 *cb_top_ptr;

	mfa2_file = FUNC4(1, sizeof(*mfa2_file), GFP_KERNEL);
	if (!mfa2_file)
		return FUNC0(-ENOMEM);

	mfa2_file->fw = fw;
	first_tlv_ptr = (const u8 *) fw->data + FUNC1(mlxfw_mfa2_fingerprint_len);
	first_tlv = FUNC8(mfa2_file, first_tlv_ptr);
	if (!first_tlv) {
		FUNC14("Could not parse package descriptor TLV\n");
		goto err_out;
	}

	multi = FUNC10(mfa2_file, first_tlv);
	if (!multi) {
		FUNC14("First TLV is not of valid multi type\n");
		goto err_out;
	}

	multi_child = FUNC9(mfa2_file, multi);
	if (!multi_child)
		goto err_out;

	pd = FUNC12(mfa2_file, multi_child);
	if (!pd) {
		FUNC14("Could not parse package descriptor TLV\n");
		goto err_out;
	}

	mfa2_file->first_dev = FUNC11(mfa2_file, first_tlv);
	if (!mfa2_file->first_dev) {
		FUNC14("First device TLV is not valid\n");
		goto err_out;
	}

	mfa2_file->dev_count = FUNC2(pd->num_devices);
	mfa2_file->first_component = FUNC7(mfa2_file,
							    mfa2_file->first_dev,
							    mfa2_file->dev_count);
	mfa2_file->component_count = FUNC2(pd->num_components);
	mfa2_file->cb = (const u8 *) fw->data + FUNC1(FUNC3(pd->cb_offset));
	if (!FUNC13(mfa2_file, mfa2_file->cb)) {
		FUNC14("Component block is out side the file\n");
		goto err_out;
	}
	mfa2_file->cb_archive_size = FUNC3(pd->cb_archive_size);
	cb_top_ptr = (const u8 *) mfa2_file->cb + mfa2_file->cb_archive_size - 1;
	if (!FUNC13(mfa2_file, cb_top_ptr)) {
		FUNC14("Component block size is too big\n");
		goto err_out;
	}

	if (!FUNC6(mfa2_file))
		goto err_out;
	return mfa2_file;
err_out:
	FUNC5(mfa2_file);
	return FUNC0(-EINVAL);
}