#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  sim_lock; } ;
typedef  TYPE_1__ ocs_t ;
struct TYPE_9__ {struct cam_sim* sim; struct cam_path* path; int /*<<< orphan*/  targ_rsrc_wildcard; int /*<<< orphan*/  ldt; } ;
typedef  TYPE_2__ ocs_fcport ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_2__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_sim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct cam_path*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cam_path*) ; 

__attribute__((used)) static int32_t
FUNC11(ocs_t *ocs, int32_t chan)
{
	ocs_fcport *fcp = NULL;
	struct cam_sim	*sim = NULL;
	struct cam_path	*path = NULL;
	fcp = FUNC0(ocs, chan);

	sim = fcp->sim;
	path = fcp->path;

	FUNC1(&fcp->ldt);
	FUNC6(fcp, 0);	

	if (fcp->sim) {
		FUNC4(&ocs->sim_lock);
			FUNC7(ocs, &fcp->targ_rsrc_wildcard);
			if (path) {
				FUNC8(AC_LOST_DEVICE, path, NULL);
				FUNC10(path);
				fcp->path = NULL;
			}
			FUNC9(FUNC3(sim));

			FUNC2(sim, FALSE);
			fcp->sim = NULL;
		FUNC5(&ocs->sim_lock);
	}
	
	return 0;
}