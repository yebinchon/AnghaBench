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
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * sim; int /*<<< orphan*/ * devq; int /*<<< orphan*/  done; int /*<<< orphan*/  actv; } ;
typedef  TYPE_1__ vhba_softc_t ;

/* Variables and functions */
 scalar_t__ CAM_SUCCESS ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VHBA_MAXCMDS ; 
 int /*<<< orphan*/  VHBA_MOD ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vhba_action ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  vhba_poll ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(vhba_softc_t *vhba)
{
	FUNC0(&vhba->actv);
	FUNC0(&vhba->done);
	vhba->devq = FUNC3(VHBA_MAXCMDS);
	if (vhba->devq == NULL) {
		return (ENOMEM);
	}
	vhba->sim = FUNC1(vhba_action, vhba_poll, VHBA_MOD, vhba, 0, &vhba->lock, VHBA_MAXCMDS, VHBA_MAXCMDS, vhba->devq);
	if (vhba->sim == NULL) {
		FUNC4(vhba->devq);
		return (ENOMEM);
	}
	FUNC7(vhba);
	FUNC5(&vhba->lock);
	if (FUNC8(vhba->sim, 0, 0) != CAM_SUCCESS) {
		FUNC2(vhba->sim, TRUE);
		FUNC6(&vhba->lock);
		return (EIO);
	}
	FUNC6(&vhba->lock);
	return (0);
}