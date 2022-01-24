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
 char FUNC2 (struct alpm_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct alpm_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct alpm_softc*) ; 
 int LSB ; 
 int /*<<< orphan*/  SMBCMD ; 
 int /*<<< orphan*/  SMBHADDR ; 
 int /*<<< orphan*/  SMBHDATA ; 
 int SMBSRBYTE ; 
 int /*<<< orphan*/  SMBSTART ; 
 int SMB_EBUSY ; 
 int SMB_ENOERR ; 
 int /*<<< orphan*/  FUNC5 (struct alpm_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct alpm_softc*) ; 
 int FUNC7 (struct alpm_softc*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev, u_char slave, char *byte)
{
	struct alpm_softc *sc = (struct alpm_softc *)FUNC8(dev);
	int error;

	FUNC1(sc);
	FUNC5(sc);
	if (!FUNC6(sc)) {
		FUNC4(sc);
		return (SMB_EBUSY);
	}

	FUNC3(sc, SMBHADDR, slave | LSB);
	FUNC3(sc, SMBCMD, SMBSRBYTE);
	FUNC3(sc, SMBSTART, 0xff);

	if ((error = FUNC7(sc)) == SMB_ENOERR)
		*byte = FUNC2(sc, SMBHDATA);

	FUNC0(FUNC9("alpm: RECVB from 0x%x, byte=0x%x, error=0x%x\n", slave, *byte, error));
	FUNC4(sc);

	return (error);
}