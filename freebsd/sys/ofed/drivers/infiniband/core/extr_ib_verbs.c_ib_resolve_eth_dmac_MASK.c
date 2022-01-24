#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
struct in6_addr {int dummy; } ;
struct ib_gid_attr {int /*<<< orphan*/  ndev; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ raw; } ;
struct TYPE_3__ {int hop_limit; TYPE_2__ dgid; int /*<<< orphan*/  sgid_index; } ;
struct ib_ah_attr {scalar_t__ port_num; TYPE_1__ grh; scalar_t__ dmac; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ib_device*,scalar_t__,int /*<<< orphan*/ ,union ib_gid*,struct ib_gid_attr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct in6_addr*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC6 (union ib_gid*,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct ib_device*) ; 
 scalar_t__ FUNC9 (struct in6_addr*) ; 
 scalar_t__ FUNC10 (struct ib_device*) ; 

int FUNC11(struct ib_device *device,
			struct ib_ah_attr *ah_attr)
{
	struct ib_gid_attr sgid_attr;
	union ib_gid sgid;
	int hop_limit;
	int ret;

	if (ah_attr->port_num < FUNC10(device) ||
	    ah_attr->port_num > FUNC8(device))
		return -EINVAL;

	if (!FUNC7(device, ah_attr->port_num))
		return 0;

	if (FUNC9((struct in6_addr *)ah_attr->grh.dgid.raw)) {
		if (FUNC3((struct in6_addr *)ah_attr->grh.dgid.raw)) {
			__be32 addr = 0;

			FUNC5(&addr, ah_attr->grh.dgid.raw + 12, 4);
			FUNC2(addr, (char *)ah_attr->dmac);
		} else {
			FUNC4((struct in6_addr *)ah_attr->grh.dgid.raw,
					(char *)ah_attr->dmac);
		}
		return 0;
	}

	ret = FUNC1(device,
			   ah_attr->port_num,
			   ah_attr->grh.sgid_index,
			   &sgid, &sgid_attr);
	if (ret != 0)
		return (ret);
	if (!sgid_attr.ndev)
		return -ENXIO;

	ret = FUNC6(&sgid,
					   &ah_attr->grh.dgid,
					   ah_attr->dmac,
					   sgid_attr.ndev, &hop_limit);
	FUNC0(sgid_attr.ndev);

	ah_attr->grh.hop_limit = hop_limit;
	return ret;
}