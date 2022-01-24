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
struct mpt_softc {TYPE_1__* request_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  callout; } ;
typedef  TYPE_1__ request_t ;

/* Variables and functions */
 int FUNC0 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_softc*) ; 

__attribute__((used)) static void
FUNC4(struct mpt_softc *mpt)
{
	int val;

	/*
	 * XXX: FREE MEMORY 
	 */
	FUNC2(mpt);

	/* Make sure no request has pending timeouts. */
	for (val = 0; val < FUNC0(mpt); val++) {
		request_t *req = &mpt->request_pool[val];
		FUNC1(mpt, &req->callout);
	}

	FUNC3(mpt);
}