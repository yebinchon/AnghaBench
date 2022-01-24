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
typedef  int /*<<< orphan*/  u64 ;
struct res_common {int owner; } ;
typedef  enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;

/* Variables and functions */
#define  RES_COUNTER 137 
#define  RES_CQ 136 
#define  RES_EQ 135 
#define  RES_FS_RULE 134 
#define  RES_MAC 133 
#define  RES_MPT 132 
#define  RES_MTT 131 
#define  RES_QP 130 
#define  RES_SRQ 129 
#define  RES_XRCD 128 
 struct res_common* FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct res_common* FUNC1 (int /*<<< orphan*/ ) ; 
 struct res_common* FUNC2 (int /*<<< orphan*/ ) ; 
 struct res_common* FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct res_common* FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct res_common* FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct res_common* FUNC6 (int /*<<< orphan*/ ) ; 
 struct res_common* FUNC7 (int /*<<< orphan*/ ) ; 
 struct res_common* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static struct res_common *FUNC10(u64 id, enum mlx4_resource type, int slave,
				   int extra)
{
	struct res_common *ret;

	switch (type) {
	case RES_QP:
		ret = FUNC6(id);
		break;
	case RES_MPT:
		ret = FUNC4(id, extra);
		break;
	case RES_MTT:
		ret = FUNC5(id, extra);
		break;
	case RES_EQ:
		ret = FUNC2(id);
		break;
	case RES_CQ:
		ret = FUNC1(id);
		break;
	case RES_SRQ:
		ret = FUNC7(id);
		break;
	case RES_MAC:
		FUNC9("implementation missing\n");
		return NULL;
	case RES_COUNTER:
		ret = FUNC0(id, extra);
		break;
	case RES_XRCD:
		ret = FUNC8(id);
		break;
	case RES_FS_RULE:
		ret = FUNC3(id, extra);
		break;
	default:
		return NULL;
	}
	if (ret)
		ret->owner = slave;

	return ret;
}