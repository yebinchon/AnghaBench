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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ target_id_t ;
struct vtscsi_softc {int /*<<< orphan*/  vtscsi_sim; struct cam_path* vtscsi_path; } ;
struct cam_path {int dummy; } ;
typedef  scalar_t__ lun_id_t ;

/* Variables and functions */
 scalar_t__ CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  VTSCSI_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vtscsi_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cam_path*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_path*) ; 

__attribute__((used)) static void
FUNC5(struct vtscsi_softc *sc, uint32_t ac_code,
    target_id_t target_id, lun_id_t lun_id)
{
	struct cam_path *path;

	/* Use the wildcard path from our softc for bus announcements. */
	if (target_id == CAM_TARGET_WILDCARD && lun_id == CAM_LUN_WILDCARD) {
		FUNC2(ac_code, sc->vtscsi_path, NULL);
		return;
	}

	if (FUNC3(&path, NULL, FUNC0(sc->vtscsi_sim),
	    target_id, lun_id) != CAM_REQ_CMP) {
		FUNC1(sc, VTSCSI_ERROR, "cannot create path\n");
		return;
	}

	FUNC2(ac_code, path, NULL);
	FUNC4(path);
}