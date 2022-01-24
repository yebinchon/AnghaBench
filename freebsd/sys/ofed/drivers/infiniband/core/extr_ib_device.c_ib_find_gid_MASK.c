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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int u8 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct ib_device {TYPE_1__* port_immutable; } ;
typedef  enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;
struct TYPE_2__ {int gid_tbl_len; } ;

/* Variables and functions */
 int ENOENT ; 
 int IB_GID_TYPE_IB ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,union ib_gid*,int,int,struct net_device*,int*) ; 
 int FUNC1 (struct ib_device*,int,int,union ib_gid*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (union ib_gid*,union ib_gid*,int) ; 
 scalar_t__ FUNC3 (struct ib_device*,int) ; 
 int FUNC4 (struct ib_device*) ; 
 int FUNC5 (struct ib_device*) ; 

int FUNC6(struct ib_device *device, union ib_gid *gid,
		enum ib_gid_type gid_type, struct net_device *ndev,
		u8 *port_num, u16 *index)
{
	union ib_gid tmp_gid;
	int ret, port, i;

	for (port = FUNC5(device); port <= FUNC4(device); ++port) {
		if (FUNC3(device, port)) {
			if (!FUNC0(device, gid, gid_type, port,
							ndev, index)) {
				*port_num = port;
				return 0;
			}
		}

		if (gid_type != IB_GID_TYPE_IB)
			continue;

		for (i = 0; i < device->port_immutable[port].gid_tbl_len; ++i) {
			ret = FUNC1(device, port, i, &tmp_gid, NULL);
			if (ret)
				return ret;
			if (!FUNC2(&tmp_gid, gid, sizeof *gid)) {
				*port_num = port;
				if (index)
					*index = i;
				return 0;
			}
		}
	}

	return -ENOENT;
}