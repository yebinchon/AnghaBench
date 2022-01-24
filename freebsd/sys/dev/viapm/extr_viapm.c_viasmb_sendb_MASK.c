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
 int /*<<< orphan*/  SMBHCMD ; 
 int /*<<< orphan*/  SMBHCTRL ; 
 char SMBHCTRL_SENDRECV ; 
 char SMBHCTRL_START ; 
 int SMB_EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct viapm_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (struct viapm_softc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char,int) ; 
 scalar_t__ FUNC6 (struct viapm_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct viapm_softc*) ; 
 int FUNC8 (struct viapm_softc*) ; 

__attribute__((used)) static int
FUNC9(device_t dev, u_char slave, char byte)
{
	struct viapm_softc *viapm = (struct viapm_softc *)FUNC4(dev);
	int error;

	FUNC1(viapm);
	FUNC7(viapm);
	if (FUNC6(viapm)) {
		FUNC3(viapm);
		return (SMB_EBUSY);
	}

	FUNC2(SMBHADDR, slave & ~ LSB);
	FUNC2(SMBHCMD, byte);

	FUNC2(SMBHCTRL, SMBHCTRL_START | SMBHCTRL_SENDRECV);

	error = FUNC8(viapm);

	FUNC0(FUNC5("viapm: SENDB to 0x%x, byte=0x%x, error=0x%x\n", slave, byte, error));
	FUNC3(viapm);

	return (error);
}