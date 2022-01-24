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
typedef  scalar_t__ u64 ;
struct mlx4_ib_dev {int /*<<< orphan*/ * sl2vl; int /*<<< orphan*/  ib_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

void FUNC3(struct mlx4_ib_dev *mdev, int port)
{
	u64 sl2vl;
	int err;

	err = FUNC1(&mdev->ib_dev, port, &sl2vl);
	if (err) {
		FUNC2("Unable to get current sl to vl mapping for port %d.  Using all zeroes (%d)\n",
		       port, err);
		sl2vl = 0;
	}
	FUNC0(&mdev->sl2vl[port - 1], sl2vl);
}