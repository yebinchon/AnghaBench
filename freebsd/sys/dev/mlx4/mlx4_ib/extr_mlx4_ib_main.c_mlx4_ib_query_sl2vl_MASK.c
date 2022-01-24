#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
union sl2vl_tbl_to_u64 {int /*<<< orphan*/  sl64; int /*<<< orphan*/ * sl8; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct ib_smp {int /*<<< orphan*/ * data; scalar_t__ attr_mod; int /*<<< orphan*/  attr_id; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_SMP_ATTR_SL_TO_VL_TABLE ; 
 int MLX4_MAD_IFC_IGNORE_KEYS ; 
 int MLX4_MAD_IFC_NET_VIEW ; 
 int /*<<< orphan*/  FUNC0 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_smp*) ; 
 struct ib_smp* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ib_smp* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ib_smp*,struct ib_smp*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (struct ib_device*) ; 

__attribute__((used)) static int FUNC8(struct ib_device *ibdev, u8 port, u64 *sl2vl_tbl)
{
	union sl2vl_tbl_to_u64 sl2vl64;
	struct ib_smp *in_mad  = NULL;
	struct ib_smp *out_mad = NULL;
	int mad_ifc_flags = MLX4_MAD_IFC_IGNORE_KEYS;
	int err = -ENOMEM;
	int jj;

	if (FUNC6(FUNC7(ibdev)->dev)) {
		*sl2vl_tbl = 0;
		return 0;
	}

	in_mad  = FUNC3(sizeof(*in_mad), GFP_KERNEL);
	out_mad = FUNC2(sizeof(*out_mad), GFP_KERNEL);
	if (!in_mad || !out_mad)
		goto out;

	FUNC0(in_mad);
	in_mad->attr_id  = IB_SMP_ATTR_SL_TO_VL_TABLE;
	in_mad->attr_mod = 0;

	if (FUNC5(FUNC7(ibdev)->dev))
		mad_ifc_flags |= MLX4_MAD_IFC_NET_VIEW;

	err = FUNC4(FUNC7(ibdev), mad_ifc_flags, port, NULL, NULL,
			   in_mad, out_mad);
	if (err)
		goto out;

	for (jj = 0; jj < 8; jj++)
		sl2vl64.sl8[jj] = ((struct ib_smp *)out_mad)->data[jj];
	*sl2vl_tbl = sl2vl64.sl64;

out:
	FUNC1(in_mad);
	FUNC1(out_mad);
	return err;
}