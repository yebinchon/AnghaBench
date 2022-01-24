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
struct hpt_iop_hba {int max_devices; int /*<<< orphan*/  pciunit; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IOPMU_INBOUND_MSG0_STOP_BACKGROUND_TASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hpt_iop_hba*) ; 
 scalar_t__ FUNC3 (struct hpt_iop_hba*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hpt_iop_hba*) ; 
 scalar_t__ FUNC5 (struct hpt_iop_hba*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hpt_iop_hba*) ; 

__attribute__((used)) static int FUNC8(device_t dev)
{
	struct hpt_iop_hba * hba = (struct hpt_iop_hba *)FUNC0(dev);
	int i;
	int error = EBUSY;

	FUNC2(hba);
	for (i = 0; i < hba->max_devices; i++)
		if (FUNC3(hba, i)) {
			FUNC1(dev, "%d file system is busy. id=%d",
						hba->pciunit, i);
			goto out;
		}

	if ((error = FUNC6(dev)) != 0)
		goto out;
	if (FUNC5(hba,
		IOPMU_INBOUND_MSG0_STOP_BACKGROUND_TASK, 60000))
		goto out;
	FUNC7(hba);

	FUNC4(hba);
	return (0);
out:
	FUNC7(hba);
	return error;
}