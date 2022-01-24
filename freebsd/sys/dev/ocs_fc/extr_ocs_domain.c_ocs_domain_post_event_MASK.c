#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ocs_sm_event_t ;
struct TYPE_5__ {int req_domain_free; int req_accept_frames; int /*<<< orphan*/  drvsm; } ;
typedef  TYPE_1__ ocs_domain_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

int
FUNC3(ocs_domain_t *domain, ocs_sm_event_t event, void *arg)
{
	int rc;
	int accept_frames;
	int req_domain_free;

	rc = FUNC2(&domain->drvsm, event, arg);

	req_domain_free = domain->req_domain_free;
	domain->req_domain_free = 0;

	accept_frames = domain->req_accept_frames;
	domain->req_accept_frames = 0;

	if (accept_frames) {
		FUNC0(domain);
	}

	if (req_domain_free) {
		FUNC1(domain);
	}

	return rc;
}