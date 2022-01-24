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
struct thread {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct TYPE_2__ {int daemon_busy; int /*<<< orphan*/  pending_mutex; int /*<<< orphan*/  hv_kvp_selinfo; } ;
typedef  TYPE_1__ hv_kvp_sc ;

/* Variables and functions */
 int POLLIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct cdev *dev, int events, struct thread *td)
{
	int revents = 0;
	hv_kvp_sc *sc = (hv_kvp_sc*)dev->si_drv1;

	FUNC0(&sc->pending_mutex);
	/*
	 * We check global flag daemon_busy for the data availiability for
	 * userland to read. Deamon_busy is set to true before driver has data
	 * for daemon to read. It is set to false after daemon sends
	 * then response back to driver.
	 */
	if (sc->daemon_busy == true)
		revents = POLLIN;
	else
		FUNC2(td, &sc->hv_kvp_selinfo);

	FUNC1(&sc->pending_mutex);

	return (revents);
}