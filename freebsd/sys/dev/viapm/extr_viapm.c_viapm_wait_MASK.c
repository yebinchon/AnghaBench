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
struct viapm_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SMBHST ; 
 int SMBHST_BUSY ; 
 int SMBHST_COLLID ; 
 int SMBHST_ERROR ; 
 int SMBHST_FAILED ; 
 int SMBHST_INTR ; 
 int SMB_EABORT ; 
 int SMB_EBUSERR ; 
 int SMB_ENOACK ; 
 int SMB_ENOERR ; 
 int SMB_ETIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct viapm_softc*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct viapm_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct viapm_softc*) ; 

__attribute__((used)) static int
FUNC7(struct viapm_softc *viapm)
{
	int count = 10000;
	u_char sts = 0;
	int error;

	FUNC3(viapm);

	/* wait for command to complete and SMBus controller is idle */
	while(count--) {
		FUNC0(10);
		sts = FUNC2(SMBHST);

		/* check if the controller is processing a command */
		if (!(sts & SMBHST_BUSY) && (sts & SMBHST_INTR))
			break;
	}

	FUNC1(FUNC4("viapm: SMBHST=0x%x\n", sts));

	error = SMB_ENOERR;

	if (!count)
		error |= SMB_ETIMEOUT;

	if (sts & SMBHST_FAILED)
		error |= SMB_EABORT;

	if (sts & SMBHST_COLLID)
		error |= SMB_ENOACK;

	if (sts & SMBHST_ERROR)
		error |= SMB_EBUSERR;

	if (error != SMB_ENOERR)
		FUNC5(viapm);

	FUNC6(viapm);

	return (error);
}