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
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_CACHE_GID_DEFAULT_MODE_SET ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,int /*<<< orphan*/ ,struct net_device*,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ib_device *ib_dev,
    u8 port, struct net_device *idev)
{
	unsigned long gid_type_mask;

	gid_type_mask = FUNC2(ib_dev, port);

	FUNC1(ib_dev, port, idev, gid_type_mask,
				     IB_CACHE_GID_DEFAULT_MODE_SET);

	return (FUNC0(gid_type_mask));
}