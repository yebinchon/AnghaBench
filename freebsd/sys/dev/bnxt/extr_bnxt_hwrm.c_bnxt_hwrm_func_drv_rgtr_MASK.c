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
struct hwrm_func_drv_rgtr_input {int ver_maj; int ver_min; int ver_upd; int /*<<< orphan*/  os_type; int /*<<< orphan*/  enables; int /*<<< orphan*/  member_0; } ;
struct bnxt_softc {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  HWRM_FUNC_DRV_RGTR ; 
 int HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_OS_TYPE ; 
 int HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_VER ; 
 int /*<<< orphan*/  HWRM_FUNC_DRV_RGTR_INPUT_OS_TYPE_FREEBSD ; 
 int __FreeBSD_version ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt_softc*,struct hwrm_func_drv_rgtr_input*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct bnxt_softc*,struct hwrm_func_drv_rgtr_input*,int) ; 

int
FUNC4(struct bnxt_softc *softc)
{
	struct hwrm_func_drv_rgtr_input req = {0};

	FUNC0(softc, &req, HWRM_FUNC_DRV_RGTR);

	req.enables = FUNC2(HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_VER |
	    HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_OS_TYPE);
	req.os_type = FUNC1(HWRM_FUNC_DRV_RGTR_INPUT_OS_TYPE_FREEBSD);

	req.ver_maj = __FreeBSD_version / 100000;
	req.ver_min = (__FreeBSD_version / 1000) % 100;
	req.ver_upd = (__FreeBSD_version / 100) % 10;

	return FUNC3(softc, &req, sizeof(req));
}