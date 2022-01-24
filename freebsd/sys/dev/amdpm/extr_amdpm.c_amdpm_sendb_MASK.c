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
 int /*<<< orphan*/  FUNC3 (struct amdpm_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdpm_softc*) ; 
 int AMDSMB_GE_CYC_BYTE ; 
 int AMDSMB_GE_HOST_STC ; 
 int /*<<< orphan*/  AMDSMB_GLOBAL_ENABLE ; 
 int /*<<< orphan*/  AMDSMB_HSTADDR ; 
 int /*<<< orphan*/  AMDSMB_HSTDATA ; 
 int LSB ; 
 int SMB_EBUSY ; 
 int /*<<< orphan*/  FUNC5 (struct amdpm_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdpm_softc*) ; 
 int FUNC7 (struct amdpm_softc*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev, u_char slave, char byte)
{
	struct amdpm_softc *sc = (struct amdpm_softc *)FUNC8(dev);
	int error;
	u_short l;

	FUNC1(sc);
	FUNC5(sc);
	if (!FUNC6(sc)) {
		FUNC4(sc);
		return (SMB_EBUSY);
	}

	FUNC3(sc, AMDSMB_HSTADDR, slave & ~LSB);
	FUNC3(sc, AMDSMB_HSTDATA, byte);
	l = FUNC2(sc, AMDSMB_GLOBAL_ENABLE);
	FUNC3(sc, AMDSMB_GLOBAL_ENABLE, (l & 0xfff8) | AMDSMB_GE_CYC_BYTE | AMDSMB_GE_HOST_STC);

	error = FUNC7(sc);

	FUNC0(FUNC9("amdpm: SENDB to 0x%x, byte=0x%x, error=0x%x\n", slave, byte, error));
	FUNC4(sc);

	return (error);
}