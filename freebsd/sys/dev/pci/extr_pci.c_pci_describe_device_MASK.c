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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char**,int*,int*,char**) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char* pci_vendordata ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static char *
FUNC8(device_t dev)
{
	int	vendor, device;
	char	*desc, *vp, *dp, *line;

	desc = vp = dp = NULL;

	/*
	 * If we have no vendor data, we can't do anything.
	 */
	if (pci_vendordata == NULL)
		goto out;

	/*
	 * Scan the vendor data looking for this device
	 */
	line = pci_vendordata;
	if ((vp = FUNC1(80, M_DEVBUF, M_NOWAIT)) == NULL)
		goto out;
	for (;;) {
		if (FUNC2(&line, &vendor, &device, &vp))
			goto out;
		if (vendor == FUNC4(dev))
			break;
	}
	if ((dp = FUNC1(80, M_DEVBUF, M_NOWAIT)) == NULL)
		goto out;
	for (;;) {
		if (FUNC2(&line, &vendor, &device, &dp)) {
			*dp = 0;
			break;
		}
		if (vendor != -1) {
			*dp = 0;
			break;
		}
		if (device == FUNC3(dev))
			break;
	}
	if (dp[0] == '\0')
		FUNC5(dp, 80, "0x%x", FUNC3(dev));
	if ((desc = FUNC1(FUNC7(vp) + FUNC7(dp) + 3, M_DEVBUF, M_NOWAIT)) !=
	    NULL)
		FUNC6(desc, "%s, %s", vp, dp);
out:
	if (vp != NULL)
		FUNC0(vp, M_DEVBUF);
	if (dp != NULL)
		FUNC0(dp, M_DEVBUF);
	return(desc);
}