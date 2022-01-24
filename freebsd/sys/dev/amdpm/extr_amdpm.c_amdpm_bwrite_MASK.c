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
typedef  int u_short ;
typedef  int u_char ;
struct amdpm_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdpm_softc*) ; 
 int FUNC2 (struct amdpm_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdpm_softc*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (struct amdpm_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdpm_softc*) ; 
 int AMDSMB_GE_CYC_BLOCK ; 
 int AMDSMB_GE_HOST_STC ; 
 int /*<<< orphan*/  AMDSMB_GLOBAL_ENABLE ; 
 int /*<<< orphan*/  AMDSMB_HSTADDR ; 
 int /*<<< orphan*/  AMDSMB_HSTCMD ; 
 int /*<<< orphan*/  AMDSMB_HSTDATA ; 
 int /*<<< orphan*/  AMDSMB_HSTDFIFO ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int LSB ; 
 int SMB_EBUSY ; 
 int SMB_EINVAL ; 
 int /*<<< orphan*/  FUNC7 (struct amdpm_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdpm_softc*) ; 
 int FUNC9 (struct amdpm_softc*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int,char,int) ; 

__attribute__((used)) static int
FUNC12(device_t dev, u_char slave, char cmd, u_char count, char *buf)
{
	struct amdpm_softc *sc = (struct amdpm_softc *)FUNC10(dev);
	u_char i;
	int error;
	u_short l;

	if (count < 1 || count > 32)
		return (SMB_EINVAL);

	FUNC1(sc);
	FUNC7(sc);
	if (!FUNC8(sc)) {
		FUNC5(sc);
		return (SMB_EBUSY);
	}

	FUNC4(sc, AMDSMB_HSTADDR, slave & ~LSB);
	
	/*
	 * Do we have to reset the internal 32-byte buffer?
	 * Can't see how to do this from the data sheet.
	 */
	FUNC4(sc, AMDSMB_HSTDATA, count);

	/* Fill the 32-byte internal buffer */
	for (i = 0; i < count; i++) {
		FUNC3(sc, AMDSMB_HSTDFIFO, buf[i]);
		FUNC6(2);
	}
	FUNC3(sc, AMDSMB_HSTCMD, cmd);
	l = FUNC2(sc, AMDSMB_GLOBAL_ENABLE);
	FUNC4(sc, AMDSMB_GLOBAL_ENABLE,
	    (l & 0xfff8) | AMDSMB_GE_CYC_BLOCK | AMDSMB_GE_HOST_STC);

	error = FUNC9(sc);

	FUNC0(FUNC11("amdpm: WRITEBLK to 0x%x, count=0x%x, cmd=0x%x, error=0x%x", slave, count, cmd, error));
	FUNC5(sc);

	return (error);
}