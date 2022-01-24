#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ifp; } ;
struct octeon_device {int ifcount; int num_oqs; TYPE_1__ props; int /*<<< orphan*/  cmd_resp_wqlock; int /*<<< orphan*/  cmd_resp_state; } ;
struct TYPE_8__ {TYPE_3__* rxpciq; } ;
struct lio {int /*<<< orphan*/  stats_timer; TYPE_4__ linfo; } ;
struct TYPE_6__ {int /*<<< orphan*/  q_no; } ;
struct TYPE_7__ {TYPE_2__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIO_DRV_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct lio* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct octeon_device *oct)
{
	int		i, j;
	struct lio	*lio;

	FUNC3(oct, "Stopping network interfaces\n");
	if (!oct->ifcount) {
		FUNC4(oct, "Init for Octeon was not completed\n");
		return (1);
	}

	FUNC6(&oct->cmd_resp_wqlock);
	oct->cmd_resp_state = LIO_DRV_OFFLINE;
	FUNC7(&oct->cmd_resp_wqlock);

	for (i = 0; i < oct->ifcount; i++) {
		lio = FUNC1(oct->props.ifp);
		for (j = 0; j < oct->num_oqs; j++)
			FUNC5(oct,
						lio->linfo.rxpciq[j].s.q_no);
	}

	FUNC0(&lio->stats_timer);

	for (i = 0; i < oct->ifcount; i++)
		FUNC2(oct, i);

	FUNC3(oct, "Network interface stopped\n");

	return (0);
}