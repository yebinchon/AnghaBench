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
 int FUNC2 (struct alpm_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct alpm_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct alpm_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
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
 int SMB_ENOERR ; 
 int /*<<< orphan*/  FUNC6 (struct alpm_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct alpm_softc*) ; 
 int FUNC8 (struct alpm_softc*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int,char,int) ; 

__attribute__((used)) static int
FUNC11(device_t dev, u_char slave, char cmd, u_char *count, char *buf)
{
	struct alpm_softc *sc = (struct alpm_softc *)FUNC9(dev);
	u_char data, len, i;
	int error;

	if (*count < 1 || *count > 32)
		return (SMB_EINVAL);

	FUNC1(sc);
	FUNC6(sc);
	if (!FUNC7(sc)) {
		FUNC4(sc);
		return (SMB_EBUSY);
	}

	FUNC3(sc, SMBHADDR, slave | LSB);
	
	/* set the cmd and reset the
	 * 32-byte long internal buffer */
	FUNC3(sc, SMBCMD, SMBWRBLOCK | SMB_BLK_CLR);

	FUNC3(sc, SMBHCMD, cmd);
	FUNC3(sc, SMBSTART, 0xff);

	if ((error = FUNC8(sc)) != SMB_ENOERR)
			goto error;

	len = FUNC2(sc, SMBHDATA);

	/* read the 32-byte internal buffer */
	for (i = 0; i < len; i++) {
		data = FUNC2(sc, SMBHBLOCK);
		if (i < *count)
			buf[i] = data;
		FUNC5(2);
	}
	*count = len;

error:
	FUNC0(FUNC10("alpm: READBLK to 0x%x, count=0x%x, cmd=0x%x, error=0x%x", slave, *count, cmd, error));
	FUNC4(sc);

	return (error);
}