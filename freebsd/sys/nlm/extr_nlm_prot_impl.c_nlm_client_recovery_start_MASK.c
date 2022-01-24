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
struct nlm_host {int /*<<< orphan*/  nh_monstate; int /*<<< orphan*/  nh_caller_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_MONITORED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlm_host*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct nlm_host *host = (struct nlm_host *) arg;

	FUNC0(1, "NLM: client lock recovery for %s started\n",
	    host->nh_caller_name);

	FUNC2(host);

	FUNC0(1, "NLM: client lock recovery for %s completed\n",
	    host->nh_caller_name);

	host->nh_monstate = NLM_MONITORED;
	FUNC3(host);

	FUNC1();
}