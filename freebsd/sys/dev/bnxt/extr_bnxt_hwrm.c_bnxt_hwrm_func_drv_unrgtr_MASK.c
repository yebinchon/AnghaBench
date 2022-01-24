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
struct hwrm_func_drv_unrgtr_input {int /*<<< orphan*/  flags; int /*<<< orphan*/  member_0; } ;
struct bnxt_softc {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  HWRM_FUNC_DRV_UNRGTR ; 
 int /*<<< orphan*/  HWRM_FUNC_DRV_UNRGTR_INPUT_FLAGS_PREPARE_FOR_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*,struct hwrm_func_drv_unrgtr_input*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bnxt_softc*,struct hwrm_func_drv_unrgtr_input*,int) ; 

int
FUNC2(struct bnxt_softc *softc, bool shutdown)
{
	struct hwrm_func_drv_unrgtr_input req = {0};

	FUNC0(softc, &req, HWRM_FUNC_DRV_UNRGTR);
	if (shutdown == true)
		req.flags |=
		    HWRM_FUNC_DRV_UNRGTR_INPUT_FLAGS_PREPARE_FOR_SHUTDOWN;
	return FUNC1(softc, &req, sizeof(req));
}