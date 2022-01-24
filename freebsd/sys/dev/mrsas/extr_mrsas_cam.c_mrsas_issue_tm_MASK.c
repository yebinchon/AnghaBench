#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mrsas_softc {int /*<<< orphan*/  mrsas_dev; int /*<<< orphan*/  sim_lock; int /*<<< orphan*/  ocr_chan; } ;
struct TYPE_5__ {int /*<<< orphan*/  high; int /*<<< orphan*/  low; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
struct TYPE_7__ {TYPE_2__ addr; } ;
typedef  TYPE_3__ MRSAS_REQUEST_DESCRIPTOR_UNION ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int FAIL ; 
 int /*<<< orphan*/  PRIBIO ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (struct mrsas_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC3(struct mrsas_softc *sc,
	MRSAS_REQUEST_DESCRIPTOR_UNION *req_desc)
{
	int sleep_stat;

	FUNC1(sc, req_desc->addr.u.low, req_desc->addr.u.high);
	sleep_stat = FUNC2(&sc->ocr_chan, &sc->sim_lock, PRIBIO, "tm_sleep", 50*hz);

	if (sleep_stat == EWOULDBLOCK) {
		FUNC0(sc->mrsas_dev, "tm cmd TIMEDOUT\n");
		return FAIL;
	}

	return SUCCESS;
}