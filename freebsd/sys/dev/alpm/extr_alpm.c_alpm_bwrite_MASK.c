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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct alpm_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct alpm_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct alpm_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int LSB ; 
 int /*<<< orphan*/  SMBCMD ; 
 int /*<<< orphan*/  SMBHADDR ; 
 int /*<<< orphan*/  SMBHBLOCK ; 
 int /*<<< orphan*/  SMBHCMD ; 
 int /*<<< orphan*/  SMBHDATA ; 
 int /*<<< orphan*/  SMBSTART ; 
 int SMBWRBLOCK ; 
 int SMB_BLK_CLR ; 
 int SMB_EBUSY ; 
 int SMB_EINVAL ; 
 int /*<<< orphan*/  FUNC5 (struct alpm_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct alpm_softc*) ; 
 int FUNC7 (struct alpm_softc*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,char,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev, u_char slave, char cmd, u_char count, char *buf)
{
	struct alpm_softc *sc = (struct alpm_softc *)FUNC8(dev);
	u_char i;
	int error;

	if (count < 1 || count > 32)
		return (SMB_EINVAL);

	FUNC1(sc);
	FUNC5(sc);
	if(!FUNC6(sc)) {
		FUNC3(sc);
		return (SMB_EBUSY);
	}

	FUNC2(sc, SMBHADDR, slave & ~LSB);
	
	/* set the cmd and reset the
	 * 32-byte long internal buffer */
	FUNC2(sc, SMBCMD, SMBWRBLOCK | SMB_BLK_CLR);

	FUNC2(sc, SMBHDATA, count);

	/* fill the 32-byte internal buffer */
	for (i = 0; i < count; i++) {
		FUNC2(sc, SMBHBLOCK, buf[i]);
		FUNC4(2);
	}
	FUNC2(sc, SMBHCMD, cmd);
	FUNC2(sc, SMBSTART, 0xff);

	error = FUNC7(sc);

	FUNC0(FUNC9("alpm: WRITEBLK to 0x%x, count=0x%x, cmd=0x%x, error=0x%x", slave, count, cmd, error));
	FUNC3(sc);

	return (error);
}