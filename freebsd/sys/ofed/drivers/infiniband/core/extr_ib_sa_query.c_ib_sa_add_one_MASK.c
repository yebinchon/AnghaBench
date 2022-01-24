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
struct ib_sa_port {int dummy; } ;
struct ib_sa_device {int start_port; int end_port; TYPE_2__* port; int /*<<< orphan*/  event_handler; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int valid; } ;
struct TYPE_4__ {int port_num; int /*<<< orphan*/  agent; int /*<<< orphan*/  update_task; TYPE_1__ classport_info; int /*<<< orphan*/  classport_lock; int /*<<< orphan*/ * sm_ah; int /*<<< orphan*/  ah_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_QPT_GSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_sa_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_sa_event ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*,int /*<<< orphan*/ *,struct ib_sa_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_sa_device*) ; 
 struct ib_sa_device* FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct ib_device*,int) ; 
 int FUNC10 (struct ib_device*) ; 
 int FUNC11 (struct ib_device*) ; 
 int /*<<< orphan*/  recv_handler ; 
 int /*<<< orphan*/  sa_client ; 
 int /*<<< orphan*/  send_handler ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct ib_device *device)
{
	struct ib_sa_device *sa_dev;
	int s, e, i;
	int count = 0;

	s = FUNC11(device);
	e = FUNC10(device);

	sa_dev = FUNC8(sizeof *sa_dev +
			 (e - s + 1) * sizeof (struct ib_sa_port),
			 GFP_KERNEL);
	if (!sa_dev)
		return;

	sa_dev->start_port = s;
	sa_dev->end_port   = e;

	for (i = 0; i <= e - s; ++i) {
		FUNC12(&sa_dev->port[i].ah_lock);
		if (!FUNC9(device, i + 1))
			continue;

		sa_dev->port[i].sm_ah    = NULL;
		sa_dev->port[i].port_num = i + s;

		FUNC12(&sa_dev->port[i].classport_lock);
		sa_dev->port[i].classport_info.valid = false;

		sa_dev->port[i].agent =
			FUNC4(device, i + s, IB_QPT_GSI,
					      NULL, 0, send_handler,
					      recv_handler, sa_dev, 0);
		if (FUNC2(sa_dev->port[i].agent))
			goto err;

		FUNC1(&sa_dev->port[i].update_task, update_sm_ah);

		count++;
	}

	if (!count)
		goto free;

	FUNC5(device, &sa_client, sa_dev);

	/*
	 * We register our event handler after everything is set up,
	 * and then update our cached info after the event handler is
	 * registered to avoid any problems if a port changes state
	 * during our initialization.
	 */

	FUNC0(&sa_dev->event_handler, device, ib_sa_event);
	if (FUNC3(&sa_dev->event_handler))
		goto err;

	for (i = 0; i <= e - s; ++i) {
		if (FUNC9(device, i + 1))
			FUNC13(&sa_dev->port[i].update_task);
	}

	return;

err:
	while (--i >= 0) {
		if (FUNC9(device, i + 1))
			FUNC6(sa_dev->port[i].agent);
	}
free:
	FUNC7(sa_dev);
	return;
}