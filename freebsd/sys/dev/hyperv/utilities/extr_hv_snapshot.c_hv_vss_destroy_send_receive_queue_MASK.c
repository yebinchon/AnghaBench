#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  to_ack_queue; int /*<<< orphan*/  to_notify_queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  to_ack_queue; int /*<<< orphan*/  to_notify_queue; } ;
struct TYPE_6__ {TYPE_2__ app_sc; TYPE_1__ daemon_sc; int /*<<< orphan*/  req_free_list; } ;
typedef  TYPE_3__ hv_vss_sc ;
typedef  int /*<<< orphan*/  hv_vss_req_internal ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  slink ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	hv_vss_sc *sc = (hv_vss_sc*)FUNC6(dev);
	hv_vss_req_internal* reqp;

	while (!FUNC0(&sc->req_free_list)) {
		reqp = FUNC1(&sc->req_free_list);
		FUNC2(reqp, link);
		FUNC7(reqp, M_DEVBUF);
	}

	while (!FUNC3(&sc->daemon_sc.to_notify_queue)) {
		reqp = FUNC4(&sc->daemon_sc.to_notify_queue);
		FUNC5(&sc->daemon_sc.to_notify_queue, slink);
		FUNC7(reqp, M_DEVBUF);
	}

	while (!FUNC3(&sc->daemon_sc.to_ack_queue)) {
		reqp = FUNC4(&sc->daemon_sc.to_ack_queue);
		FUNC5(&sc->daemon_sc.to_ack_queue, slink);
		FUNC7(reqp, M_DEVBUF);
	}

	while (!FUNC3(&sc->app_sc.to_notify_queue)) {
		reqp = FUNC4(&sc->app_sc.to_notify_queue);
		FUNC5(&sc->app_sc.to_notify_queue, slink);
		FUNC7(reqp, M_DEVBUF);
	}

	while (!FUNC3(&sc->app_sc.to_ack_queue)) {
		reqp = FUNC4(&sc->app_sc.to_ack_queue);
		FUNC5(&sc->app_sc.to_ack_queue, slink);
		FUNC7(reqp, M_DEVBUF);
	}
	return (0);
}