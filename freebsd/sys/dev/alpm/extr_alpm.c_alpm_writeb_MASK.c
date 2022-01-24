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
 int LSB ; 
 int /*<<< orphan*/  SMBCMD ; 
 int /*<<< orphan*/  SMBHADDR ; 
 int /*<<< orphan*/  SMBHCMD ; 
 int /*<<< orphan*/  SMBHDATA ; 
 int /*<<< orphan*/  SMBSTART ; 
 int SMBWRBYTE ; 
 int SMB_EBUSY ; 
 int /*<<< orphan*/  FUNC4 (struct alpm_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct alpm_softc*) ; 
 int FUNC6 (struct alpm_softc*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char,char,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev, u_char slave, char cmd, char byte)
{
	struct alpm_softc *sc = (struct alpm_softc *)FUNC7(dev);
	int error;

	FUNC1(sc);
	FUNC4(sc);
	if (!FUNC5(sc)) {
		FUNC3(sc);
		return (SMB_EBUSY);
	}

	FUNC2(sc, SMBHADDR, slave & ~LSB);
	FUNC2(sc, SMBCMD, SMBWRBYTE);
	FUNC2(sc, SMBHDATA, byte);
	FUNC2(sc, SMBHCMD, cmd);
	FUNC2(sc, SMBSTART, 0xff);

	error = FUNC6(sc);

	FUNC0(FUNC8("alpm: WRITEB to 0x%x, cmd=0x%x, byte=0x%x, error=0x%x\n", slave, cmd, byte, error));
	FUNC3(sc);

	return (error);
}