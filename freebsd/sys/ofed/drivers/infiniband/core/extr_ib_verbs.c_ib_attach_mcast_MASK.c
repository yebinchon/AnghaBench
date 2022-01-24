#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
union ib_gid {scalar_t__ raw; } ;
typedef  int /*<<< orphan*/  u16 ;
struct in6_addr {int dummy; } ;
struct ib_qp {scalar_t__ qp_type; int /*<<< orphan*/  usecnt; TYPE_1__* device; } ;
struct TYPE_2__ {int (* attach_mcast ) (struct ib_qp*,union ib_gid*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 scalar_t__ IB_QPT_UD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*) ; 
 int FUNC3 (struct ib_qp*,union ib_gid*,int /*<<< orphan*/ ) ; 

int FUNC4(struct ib_qp *qp, union ib_gid *gid, u16 lid)
{
	int ret;

	if (!qp->device->attach_mcast)
		return -ENOSYS;

	if (!FUNC2((struct in6_addr *)gid->raw) ||
	    qp->qp_type != IB_QPT_UD || !FUNC1(qp, lid))
		return -EINVAL;

	ret = qp->device->attach_mcast(qp, gid, lid);
	if (!ret)
		FUNC0(&qp->usecnt);
	return ret;
}