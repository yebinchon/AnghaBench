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
struct mbuf {int dummy; } ;
struct TYPE_4__ {TYPE_3__* ifp; int /*<<< orphan*/ * tx_free_queue; scalar_t__ fau; int /*<<< orphan*/  link_task; scalar_t__ need_link_update; } ;
typedef  TYPE_1__ cvm_oct_private_t ;
struct TYPE_6__ {int /*<<< orphan*/  if_drv_flags; } ;
struct TYPE_5__ {scalar_t__ if_softc; } ;

/* Variables and functions */
 int CVMX_PIP_NUM_INPUT_PORTS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,void (*) (void*),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_2__** cvm_oct_device ; 
 int /*<<< orphan*/  cvm_oct_link_taskq ; 
 int /*<<< orphan*/  cvm_oct_poll_timer ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void *arg)
{
	static int port;
	static int updated;
	if (port < CVMX_PIP_NUM_INPUT_PORTS) {
		if (cvm_oct_device[port]) {
			int queues_per_port;
			int qos;
			cvm_oct_private_t *priv = (cvm_oct_private_t *)cvm_oct_device[port]->if_softc;

			FUNC5(priv->ifp);
			if (priv->need_link_update) {
				updated++;
				FUNC9(cvm_oct_link_taskq, &priv->link_task);
			}

			queues_per_port = FUNC7(port);
			/* Drain any pending packets in the free list */
			for (qos = 0; qos < queues_per_port; qos++) {
				if (FUNC3(&priv->tx_free_queue[qos]) > 0) {
					FUNC0(&priv->tx_free_queue[qos]);
					while (FUNC3(&priv->tx_free_queue[qos]) > FUNC6(priv->fau+qos*4, 0)) {
						struct mbuf *m;

						FUNC2(&priv->tx_free_queue[qos], m);
						FUNC8(m);
					}
					FUNC1(&priv->tx_free_queue[qos]);

					/*
					 * XXX locking!
					 */
					priv->ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
				}
			}
		}
		port++;
		/* Poll the next port in a 50th of a second.
		   This spreads the polling of ports out a little bit */
		FUNC4(&cvm_oct_poll_timer, hz / 50, cvm_do_timer, NULL);
	} else {
		port = 0;
		/* If any updates were made in this run, continue iterating at
		 * 1/50th of a second, so that if a link has merely gone down
		 * temporarily (e.g. because of interface reinitialization) it
		 * will not be forced to stay down for an entire second.
		 */
		if (updated > 0) {
			updated = 0;
			FUNC4(&cvm_oct_poll_timer, hz / 50, cvm_do_timer, NULL);
		} else {
			/* All ports have been polled. Start the next iteration through
			   the ports in one second */
			FUNC4(&cvm_oct_poll_timer, hz, cvm_do_timer, NULL);
		}
	}
}