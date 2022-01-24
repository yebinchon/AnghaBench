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
struct smbiod_event {int ev_type; int ev_error; void* ev_ident; } ;
struct smbiod {int /*<<< orphan*/  iod_evlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SMBIOD ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PDROP ; 
 int PWAIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SMBIOD_EV_SYNC ; 
 int /*<<< orphan*/  FUNC1 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC2 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC3 (struct smbiod*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct smbiod_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_link ; 
 int /*<<< orphan*/  FUNC5 (struct smbiod_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct smbiod_event*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct smbiod*) ; 
 struct smbiod_event* FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(struct smbiod *iod, int event, void *ident)
{
	struct smbiod_event *evp;
	int error;

	FUNC0("\n");
	evp = FUNC8(sizeof(*evp), M_SMBIOD, M_WAITOK);
	evp->ev_type = event;
	evp->ev_ident = ident;
	FUNC1(iod);
	FUNC4(&iod->iod_evlist, evp, ev_link);
	if ((event & SMBIOD_EV_SYNC) == 0) {
		FUNC3(iod);
		FUNC7(iod);
		return 0;
	}
	FUNC7(iod);
	FUNC6(evp, FUNC2(iod), PWAIT | PDROP, "90evw", 0);
	error = evp->ev_error;
	FUNC5(evp, M_SMBIOD);
	return error;
}