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
struct res_xrcdn {int dummy; } ;
struct res_srq {int dummy; } ;
struct res_qp {int dummy; } ;
struct res_mtt {int dummy; } ;
struct res_mpt {int dummy; } ;
struct res_fs_rule {int dummy; } ;
struct res_eq {int dummy; } ;
struct res_cq {int dummy; } ;
struct res_counter {int dummy; } ;
struct res_common {int dummy; } ;
typedef  enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
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
 int FUNC0 (struct res_counter*) ; 
 int FUNC1 (struct res_cq*) ; 
 int FUNC2 (struct res_eq*) ; 
 int FUNC3 (struct res_fs_rule*) ; 
 int FUNC4 (struct res_mpt*) ; 
 int FUNC5 (struct res_mtt*,int) ; 
 int FUNC6 (struct res_qp*) ; 
 int FUNC7 (struct res_srq*) ; 
 int FUNC8 (struct res_xrcdn*) ; 

__attribute__((used)) static int FUNC9(struct res_common *res, enum mlx4_resource type, int extra)
{
	switch (type) {
	case RES_QP:
		return FUNC6((struct res_qp *)res);
	case RES_CQ:
		return FUNC1((struct res_cq *)res);
	case RES_SRQ:
		return FUNC7((struct res_srq *)res);
	case RES_MPT:
		return FUNC4((struct res_mpt *)res);
	case RES_MTT:
		return FUNC5((struct res_mtt *)res, extra);
	case RES_MAC:
		return -ENOSYS;
	case RES_EQ:
		return FUNC2((struct res_eq *)res);
	case RES_COUNTER:
		return FUNC0((struct res_counter *)res);
	case RES_XRCD:
		return FUNC8((struct res_xrcdn *)res);
	case RES_FS_RULE:
		return FUNC3((struct res_fs_rule *)res);
	default:
		return -EINVAL;
	}
}