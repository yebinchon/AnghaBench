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
 int AMDSMB_GE_CYC_WDATA ; 
 int AMDSMB_GE_HOST_STC ; 
 int /*<<< orphan*/  AMDSMB_GLOBAL_ENABLE ; 
 int /*<<< orphan*/  AMDSMB_HSTADDR ; 
 int /*<<< orphan*/  AMDSMB_HSTCMD ; 
 int /*<<< orphan*/  AMDSMB_HSTDATA ; 
 int LSB ; 
 int SMB_EBUSY ; 
 int /*<<< orphan*/  FUNC6 (struct amdpm_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdpm_softc*) ; 
 int FUNC8 (struct amdpm_softc*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char,short,int) ; 

__attribute__((used)) static int
FUNC11(device_t dev, u_char slave, char cmd, short word)
{
	struct amdpm_softc *sc = (struct amdpm_softc *)FUNC9(dev);
	int error;
	u_short l;

	FUNC1(sc);
	FUNC6(sc);
	if (!FUNC7(sc)) {
		FUNC5(sc);
		return (SMB_EBUSY);
	}

	FUNC4(sc, AMDSMB_HSTADDR, slave & ~LSB);
	FUNC4(sc, AMDSMB_HSTDATA, word);
	FUNC3(sc, AMDSMB_HSTCMD, cmd);
	l = FUNC2(sc, AMDSMB_GLOBAL_ENABLE);
	FUNC4(sc, AMDSMB_GLOBAL_ENABLE, (l & 0xfff8) | AMDSMB_GE_CYC_WDATA | AMDSMB_GE_HOST_STC);

	error = FUNC8(sc);

	FUNC0(FUNC10("amdpm: WRITEW to 0x%x, cmd=0x%x, word=0x%x, error=0x%x\n", slave, cmd, word, error));
	FUNC5(sc);

	return (error);
}