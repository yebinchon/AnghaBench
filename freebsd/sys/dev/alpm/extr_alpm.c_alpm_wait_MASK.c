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
typedef  int u_char ;
struct alpm_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct alpm_softc*,int /*<<< orphan*/ ) ; 
 int BUS_COLLI ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int DEVICE_ERR ; 
 int /*<<< orphan*/  SMBSTS ; 
 int SMB_EABORT ; 
 int SMB_EBUSERR ; 
 int SMB_ENOACK ; 
 int SMB_ENOERR ; 
 int SMB_ETIMEOUT ; 
 int SMI_I_STS ; 
 int TERMINATE ; 
 int /*<<< orphan*/  FUNC3 (struct alpm_softc*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int
FUNC5(struct alpm_softc *sc)
{
	int count = 10000;
	u_char sts = 0;
	int error;

	/* wait for command to complete and SMBus controller is idle */
	while (count--) {
		FUNC2(10);
		sts = FUNC1(sc, SMBSTS);
		if (sts & SMI_I_STS)
			break;
	}

	FUNC0(FUNC4("alpm: STS=0x%x\n", sts));

	error = SMB_ENOERR;

	if (!count)
		error |= SMB_ETIMEOUT;

	if (sts & TERMINATE)
		error |= SMB_EABORT;

	if (sts & BUS_COLLI)
		error |= SMB_ENOACK;

	if (sts & DEVICE_ERR)
		error |= SMB_EBUSERR;

	if (error != SMB_ENOERR)
		FUNC3(sc);

	return (error);
}