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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LSB ; 
 int /*<<< orphan*/  SMBHADDR ; 
 int /*<<< orphan*/  SMBHBLOCK ; 
 int /*<<< orphan*/  SMBHCMD ; 
 int /*<<< orphan*/  SMBHCTRL ; 
 char SMBHCTRL_BLOCK ; 
 char SMBHCTRL_START ; 
 int /*<<< orphan*/  SMBHDATA0 ; 
 int SMB_EBUSY ; 
 int SMB_EINVAL ; 
 int SMB_ENOERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct viapm_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC5 (struct viapm_softc*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,char,int) ; 
 scalar_t__ FUNC8 (struct viapm_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct viapm_softc*) ; 
 int FUNC10 (struct viapm_softc*) ; 

__attribute__((used)) static int
FUNC11(device_t dev, u_char slave, char cmd, u_char *count, char *buf)
{
	struct viapm_softc *viapm = (struct viapm_softc *)FUNC6(dev);
	u_char data, len, i;
	int error;

	if (*count < 1 || *count > 32)
		return (SMB_EINVAL);

	FUNC3(viapm);
	FUNC9(viapm);
	if (FUNC8(viapm)) {
		FUNC5(viapm);
		return (SMB_EBUSY);
	}

	FUNC4(SMBHADDR, slave | LSB);
	FUNC4(SMBHCMD, cmd);
	FUNC4(SMBHCTRL, SMBHCTRL_START | SMBHCTRL_BLOCK);

	if ((error = FUNC10(viapm)) != SMB_ENOERR)
		goto error;

	len = FUNC2(SMBHDATA0);
	i = FUNC2(SMBHCTRL); 		/* reset counter */

	/* read the 32-byte internal buffer */
	for (i = 0; i < len; i++) {
		data = FUNC2(SMBHBLOCK);
		if (i < *count)
			buf[i] = data;
		FUNC0(2);
	}
	*count = len;

error:
	FUNC1(FUNC7("viapm: READBLK to 0x%x, count=0x%x, cmd=0x%x, error=0x%x", slave, *count, cmd, error));
	FUNC5(viapm);

	return (error);
}