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
 int LSB ; 
 int /*<<< orphan*/  SMBCMD ; 
 int /*<<< orphan*/  SMBHADDR ; 
 int /*<<< orphan*/  SMBHCMD ; 
 int /*<<< orphan*/  SMBHDATA ; 
 int /*<<< orphan*/  SMBHDATB ; 
 int /*<<< orphan*/  SMBSTART ; 
 int SMBWRWORD ; 
 int SMB_EBUSY ; 
 int SMB_ENOERR ; 
 int /*<<< orphan*/  FUNC5 (struct alpm_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct alpm_softc*) ; 
 int FUNC7 (struct alpm_softc*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char,short,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev, u_char slave, char cmd, short *word)
{
	struct alpm_softc *sc = (struct alpm_softc *)FUNC8(dev);
	int error;
	u_char high, low;

	FUNC1(sc);
	FUNC5(sc);
	if (!FUNC6(sc)) {
		FUNC4(sc);
		return (SMB_EBUSY);
	}

	FUNC3(sc, SMBHADDR, slave | LSB);
	FUNC3(sc, SMBCMD, SMBWRWORD);
	FUNC3(sc, SMBHCMD, cmd);
	FUNC3(sc, SMBSTART, 0xff);

	if ((error = FUNC7(sc)) == SMB_ENOERR) {
		low = FUNC2(sc, SMBHDATA);
		high = FUNC2(sc, SMBHDATB);

		*word = ((high & 0xff) << 8) | (low & 0xff);
	}

	FUNC0(FUNC9("alpm: READW from 0x%x, cmd=0x%x, word=0x%x, error=0x%x\n", slave, cmd, *word, error));
	FUNC4(sc);

	return (error);
}