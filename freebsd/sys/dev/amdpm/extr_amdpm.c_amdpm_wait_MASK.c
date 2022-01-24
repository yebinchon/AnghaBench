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
typedef  int u_short ;
struct amdpm_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdpm_softc*) ; 
 int FUNC2 (struct amdpm_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AMDSMB_GLOBAL_STATUS ; 
 int AMDSMB_GS_ABRT_STS ; 
 int AMDSMB_GS_COL_STS ; 
 int AMDSMB_GS_HST_STS ; 
 int AMDSMB_GS_PRERR_STS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int SMB_EABORT ; 
 int SMB_EBUSERR ; 
 int SMB_ENOACK ; 
 int SMB_ENOERR ; 
 int SMB_ETIMEOUT ; 
 int /*<<< orphan*/  FUNC4 (struct amdpm_softc*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

__attribute__((used)) static int
FUNC6(struct amdpm_softc *sc)
{
	int count = 10000;
	u_short sts = 0;
	int error;

	FUNC1(sc);
	/* Wait for command to complete (SMBus controller is idle) */
	while(count--) {
		FUNC3(10);
		sts = FUNC2(sc, AMDSMB_GLOBAL_STATUS);
		if (!(sts & AMDSMB_GS_HST_STS))
			break;
	}

	FUNC0(FUNC5("amdpm: STS=0x%x (count=%d)\n", sts, count));

	error = SMB_ENOERR;

	if (!count)
		error |= SMB_ETIMEOUT;

	if (sts & AMDSMB_GS_ABRT_STS)
		error |= SMB_EABORT;

	if (sts & AMDSMB_GS_COL_STS)
		error |= SMB_ENOACK;

	if (sts & AMDSMB_GS_PRERR_STS)
		error |= SMB_EBUSERR;

	if (error != SMB_ENOERR)
		FUNC4(sc);

	return (error);
}