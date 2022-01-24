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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct ib_gid_attr {int gid_type; struct net_device* ndev; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  gid_attr ;
typedef  enum gid_op_type { ____Placeholder_gid_op_type } gid_op_type ;

/* Variables and functions */
#define  GID_ADD 129 
#define  GID_DEL 128 
 int IB_GID_TYPE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ ,union ib_gid*,struct ib_gid_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,int /*<<< orphan*/ ,union ib_gid*,struct ib_gid_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_gid_attr*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC3 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(enum gid_op_type gid_op, struct ib_device *ib_dev,
    u8 port, union ib_gid *gid, struct net_device *ndev)
{
	int i;
	unsigned long gid_type_mask = FUNC3(ib_dev, port);
	struct ib_gid_attr gid_attr;

	FUNC2(&gid_attr, 0, sizeof(gid_attr));
	gid_attr.ndev = ndev;

	for (i = 0; i != IB_GID_TYPE_SIZE; i++) {
		if ((1UL << i) & gid_type_mask) {
			gid_attr.gid_type = i;
			switch (gid_op) {
			case GID_ADD:
				FUNC0(ib_dev, port,
						 gid, &gid_attr);
				break;
			case GID_DEL:
				FUNC1(ib_dev, port,
						 gid, &gid_attr);
				break;
			}
		}
	}
}