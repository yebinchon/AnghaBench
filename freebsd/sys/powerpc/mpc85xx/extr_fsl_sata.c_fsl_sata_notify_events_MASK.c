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
struct fsl_sata_channel {int /*<<< orphan*/  path; int /*<<< orphan*/  dev; int /*<<< orphan*/  r_mem; } ;
struct cam_path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_SCSI_AEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  FSL_SATA_P_SNTF ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cam_path*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct fsl_sata_channel *ch, u_int32_t status)
{
	struct cam_path *dpath;
	int i;

	FUNC0(ch->r_mem, FSL_SATA_P_SNTF, status);
	if (bootverbose)
		FUNC1(ch->dev, "SNTF 0x%04x\n", status);
	for (i = 0; i < 16; i++) {
		if ((status & (1 << i)) == 0)
			continue;
		if (FUNC3(&dpath, NULL,
		    FUNC5(ch->path), i, 0) == CAM_REQ_CMP) {
			FUNC2(AC_SCSI_AEN, dpath, NULL);
			FUNC4(dpath);
		}
	}
}