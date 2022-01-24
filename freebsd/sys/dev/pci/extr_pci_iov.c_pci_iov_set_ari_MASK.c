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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PCIM_SRIOV_ARI_EN ; 
 scalar_t__ PCIR_SRIOV_CTL ; 
 int /*<<< orphan*/  PCIZ_SRIOV ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 

__attribute__((used)) static int
FUNC11(device_t bus)
{
	device_t lowest;
	device_t *devlist;
	int i, error, devcount, lowest_func, lowest_pos, iov_pos, dev_func;
	uint16_t iov_ctl;

	/* If ARI is disabled on the downstream port there is nothing to do. */
	if (!FUNC1(FUNC4(bus)))
		return (0);

	error = FUNC2(bus, &devlist, &devcount);

	if (error != 0)
		return (error);

	lowest = NULL;
	for (i = 0; i < devcount; i++) {
		if (FUNC7(devlist[i], PCIZ_SRIOV, &iov_pos) == 0) {
			dev_func = FUNC8(devlist[i]);
			if (lowest == NULL || dev_func < lowest_func) {
				lowest = devlist[i];
				lowest_func = dev_func;
				lowest_pos = iov_pos;
			}
		}
	}
	FUNC6(devlist, M_TEMP);

	/*
	 * If we called this function some device must have the SR-IOV
	 * capability.
	 */
	FUNC0(lowest != NULL,
	    ("Could not find child of %s with SR-IOV capability",
	    FUNC3(bus)));

	iov_ctl = FUNC9(lowest, lowest_pos + PCIR_SRIOV_CTL, 2);
	iov_ctl |= PCIM_SRIOV_ARI_EN;
	FUNC10(lowest, lowest_pos + PCIR_SRIOV_CTL, iov_ctl, 2);
	if ((FUNC9(lowest, lowest_pos + PCIR_SRIOV_CTL, 2) &
	    PCIM_SRIOV_ARI_EN) == 0) {
		FUNC5(lowest, "failed to enable ARI\n");
		return (ENXIO);
	}
	return (0);
}