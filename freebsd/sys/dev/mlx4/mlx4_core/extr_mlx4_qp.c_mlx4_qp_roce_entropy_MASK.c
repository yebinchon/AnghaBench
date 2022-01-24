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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct mlx4_qp_context {int /*<<< orphan*/  remote_qpn; } ;
struct mlx4_qp {scalar_t__ qpn; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (struct mlx4_dev*,struct mlx4_qp*,struct mlx4_qp_context*) ; 

u16 FUNC3(struct mlx4_dev *dev, u32 qpn)
{
	struct mlx4_qp_context context;
	struct mlx4_qp qp;
	int err;

	qp.qpn = qpn;
	err = FUNC2(dev, &qp, &context);
	if (!err) {
		u32 dest_qpn = FUNC0(context.remote_qpn) & 0xffffff;
		u16 folded_dst = FUNC1(dest_qpn);
		u16 folded_src = FUNC1(qpn);

		return (dest_qpn != qpn) ?
			((folded_dst ^ folded_src) | 0xC000) :
			folded_src | 0xC000;
	}
	return 0xdead;
}