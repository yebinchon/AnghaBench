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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int LSB ; 
 int /*<<< orphan*/  SMBHADDR ; 
 int /*<<< orphan*/  SMBHCTRL ; 
 int SMBHCTRL_SENDRECV ; 
 int SMBHCTRL_START ; 
 int /*<<< orphan*/  SMBHDATA0 ; 
 int SMB_EBUSY ; 
 int SMB_ENOERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct viapm_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct viapm_softc*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char,int) ; 
 scalar_t__ FUNC7 (struct viapm_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct viapm_softc*) ; 
 int FUNC9 (struct viapm_softc*) ; 

__attribute__((used)) static int
FUNC10(device_t dev, u_char slave, char *byte)
{
	struct viapm_softc *viapm = (struct viapm_softc *)FUNC5(dev);
	int error;

	FUNC2(viapm);
	FUNC8(viapm);
	if (FUNC7(viapm)) {
		FUNC4(viapm);
		return (SMB_EBUSY);
	}

	FUNC3(SMBHADDR, slave | LSB);

	FUNC3(SMBHCTRL, SMBHCTRL_START | SMBHCTRL_SENDRECV);

	if ((error = FUNC9(viapm)) == SMB_ENOERR)
		*byte = FUNC1(SMBHDATA0);

	FUNC0(FUNC6("viapm: RECVB from 0x%x, byte=0x%x, error=0x%x\n", slave, *byte, error));
	FUNC4(viapm);

	return (error);
}