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
struct amdsmb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdsmb_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdsmb_softc*) ; 
 int /*<<< orphan*/  SMB_ADDR ; 
 int /*<<< orphan*/  SMB_CMD ; 
 int /*<<< orphan*/  SMB_DATA ; 
 int /*<<< orphan*/  SMB_PRTCL ; 
 int SMB_PRTCL_BYTE_DATA ; 
 int SMB_PRTCL_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct amdsmb_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct amdsmb_softc*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char,char,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev, u_char slave, char cmd, char byte)
{
	struct amdsmb_softc *sc = (struct amdsmb_softc *)FUNC5(dev);
	int error;

	FUNC1(sc);
	FUNC3(sc, SMB_CMD, cmd);
	FUNC3(sc, SMB_DATA, byte);
	FUNC3(sc, SMB_ADDR, slave);
	FUNC3(sc, SMB_PRTCL, SMB_PRTCL_WRITE | SMB_PRTCL_BYTE_DATA);

	error = FUNC4(sc);

	FUNC0(FUNC6("amdsmb: WRITEB to 0x%x, cmd=0x%x, byte=0x%x, "
	    "error=0x%x\n", slave, cmd, byte, error));
	FUNC2(sc);

	return (error);
}