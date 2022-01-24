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
typedef  int u_int32_t ;
struct siis_channel {int quirks; int /*<<< orphan*/  path; scalar_t__ pm_present; int /*<<< orphan*/  r_mem; } ;
struct cam_path {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_SCSI_AEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  SIIS_P_SNTF ; 
 int SIIS_Q_SNTF ; 
 scalar_t__ bootverbose ; 
 struct siis_channel* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cam_path*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(device_t dev)
{
	struct siis_channel *ch = FUNC2(dev);
	struct cam_path *dpath;
	u_int32_t status;
	int i;

	if (ch->quirks & SIIS_Q_SNTF) {
		status = FUNC0(ch->r_mem, SIIS_P_SNTF);
		FUNC1(ch->r_mem, SIIS_P_SNTF, status);
	} else {
		/*
		 * Without SNTF we have no idea which device sent notification.
		 * If PMP is connected, assume it, else - device.
		 */
		status = (ch->pm_present) ? 0x8000 : 0x0001;
	}
	if (bootverbose)
		FUNC3(dev, "SNTF 0x%04x\n", status);
	for (i = 0; i < 16; i++) {
		if ((status & (1 << i)) == 0)
			continue;
		if (FUNC5(&dpath, NULL,
		    FUNC7(ch->path), i, 0) == CAM_REQ_CMP) {
			FUNC4(AC_SCSI_AEN, dpath, NULL);
			FUNC6(dpath);
		}
	}

}