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
struct mps_softc {int /*<<< orphan*/  mps_mtx; } ;
struct mps_command {scalar_t__ cm_state; struct mps_softc* cm_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ MPS_CM_STATE_BUSY ; 
 scalar_t__ MPS_CM_STATE_INQUEUE ; 
 int MPS_INFO ; 
 int MPS_RECOVERY ; 
 int /*<<< orphan*/  FUNC1 (struct mps_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mps_command*,int,char*,struct mps_command*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *data)
{
	struct mps_command *tm = data;
	struct mps_softc *sc = tm->cm_sc;

	FUNC3(&sc->mps_mtx, MA_OWNED);

	FUNC2(tm, MPS_INFO|MPS_RECOVERY,
	    "task mgmt %p timed out\n", tm);

	FUNC0(tm->cm_state == MPS_CM_STATE_INQUEUE,
	    ("command not inqueue\n"));

	tm->cm_state = MPS_CM_STATE_BUSY;
	FUNC1(sc);
}