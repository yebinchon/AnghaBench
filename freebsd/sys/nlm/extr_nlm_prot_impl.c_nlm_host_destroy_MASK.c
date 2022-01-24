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
struct TYPE_4__ {scalar_t__ nr_client; } ;
struct TYPE_3__ {scalar_t__ nr_client; } ;
struct nlm_host {int /*<<< orphan*/  nh_sysctl; int /*<<< orphan*/  nh_lock; TYPE_2__ nh_clntrpc; TYPE_1__ nh_srvrpc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  M_NLM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nlm_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlm_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nh_link ; 
 int /*<<< orphan*/  nlm_global_lock ; 
 int /*<<< orphan*/  nlm_hosts ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct nlm_host *host)
{

	FUNC4(&nlm_global_lock);
	FUNC1(&nlm_hosts, host, nh_link);
	FUNC5(&nlm_global_lock);

	if (host->nh_srvrpc.nr_client)
		FUNC0(host->nh_srvrpc.nr_client);
	if (host->nh_clntrpc.nr_client)
		FUNC0(host->nh_clntrpc.nr_client);
	FUNC3(&host->nh_lock);
	FUNC6(&host->nh_sysctl);
	FUNC2(host, M_NLM);
}