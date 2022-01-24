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
struct mlx4_ib_dev {int dummy; } ;
struct ib_event_work {int port; int /*<<< orphan*/  work; struct mlx4_ib_dev* ib_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_sl2vl_update_work ; 
 struct ib_event_work* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wq ; 

void FUNC4(struct mlx4_ib_dev *ibdev,
				     int port)
{
	struct ib_event_work *ew;

	ew = FUNC1(sizeof(*ew), GFP_ATOMIC);
	if (ew) {
		FUNC0(&ew->work, ib_sl2vl_update_work);
		ew->port = port;
		ew->ib_dev = ibdev;
		FUNC3(wq, &ew->work);
	} else {
		FUNC2("failed to allocate memory for sl2vl update work\n");
	}
}