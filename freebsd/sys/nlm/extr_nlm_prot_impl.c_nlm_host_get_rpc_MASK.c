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
struct sockaddr {int dummy; } ;
struct nlm_rpc {scalar_t__ nr_create_time; int /*<<< orphan*/ * nr_client; } ;
struct nlm_host {int /*<<< orphan*/  nh_lock; int /*<<< orphan*/  nh_vers; int /*<<< orphan*/  nh_addr; struct nlm_rpc nh_clntrpc; struct nlm_rpc nh_srvrpc; } ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NLM_PROG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ time_uptime ; 

CLIENT *
FUNC6(struct nlm_host *host, bool_t isserver)
{
	struct nlm_rpc *rpc;
	CLIENT *client;

	FUNC3(&host->nh_lock);

	if (isserver)
		rpc = &host->nh_srvrpc;
	else
		rpc = &host->nh_clntrpc;

	/*
	 * We can't hold onto RPC handles for too long - the async
	 * call/reply protocol used by some NLM clients makes it hard
	 * to tell when they change port numbers (e.g. after a
	 * reboot). Note that if a client reboots while it isn't
	 * holding any locks, it won't bother to notify us. We
	 * expire the RPC handles after two minutes.
	 */
	if (rpc->nr_client && time_uptime > rpc->nr_create_time + 2*60) {
		client = rpc->nr_client;
		rpc->nr_client = NULL;
		FUNC4(&host->nh_lock);
		FUNC2(client);
		FUNC3(&host->nh_lock);
	}

	if (!rpc->nr_client) {
		FUNC4(&host->nh_lock);
		client = FUNC5((struct sockaddr *)&host->nh_addr,
		    NLM_PROG, host->nh_vers);
		FUNC3(&host->nh_lock);

		if (client) {
			if (rpc->nr_client) {
				FUNC4(&host->nh_lock);
				FUNC1(client);
				FUNC3(&host->nh_lock);
			} else {
				rpc->nr_client = client;
				rpc->nr_create_time = time_uptime;
			}
		}
	}

	client = rpc->nr_client;
	if (client)
		FUNC0(client);
	FUNC4(&host->nh_lock);

	return (client);

}