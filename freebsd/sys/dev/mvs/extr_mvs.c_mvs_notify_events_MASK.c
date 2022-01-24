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
typedef  int uint32_t ;
struct mvs_channel {int /*<<< orphan*/  path; scalar_t__ pm_present; int /*<<< orphan*/  r_mem; } ;
struct cam_path {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_SCSI_AEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  SATA_FISDW0 ; 
 scalar_t__ bootverbose ; 
 struct mvs_channel* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct cam_path*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(device_t dev)
{
	struct mvs_channel *ch = FUNC1(dev);
	struct cam_path *dpath;
	uint32_t fis;
	int d;

	/* Try to read PMP field from SDB FIS. Present only for Gen-IIe. */
	fis = FUNC0(ch->r_mem, SATA_FISDW0);
	if ((fis & 0x80ff) == 0x80a1)
		d = (fis & 0x0f00) >> 8;
	else
		d = ch->pm_present ? 15 : 0;
	if (bootverbose)
		FUNC2(dev, "SNTF %d\n", d);
	if (FUNC4(&dpath, NULL,
	    FUNC6(ch->path), d, 0) == CAM_REQ_CMP) {
		FUNC3(AC_SCSI_AEN, dpath, NULL);
		FUNC5(dpath);
	}
}