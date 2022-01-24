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
 scalar_t__ SMB_DATA ; 
 int SMB_ENOERR ; 
 int /*<<< orphan*/  SMB_PRTCL ; 
 int SMB_PRTCL_READ ; 
 int SMB_PRTCL_WORD_DATA ; 
 int /*<<< orphan*/  FUNC3 (struct amdsmb_softc*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdsmb_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct amdsmb_softc*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char,unsigned short,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev, u_char slave, char cmd, short *word)
{
	struct amdsmb_softc *sc = (struct amdsmb_softc *)FUNC6(dev);
	u_char temp[2];
	int error;

	FUNC1(sc);
	FUNC4(sc, SMB_CMD, cmd);
	FUNC4(sc, SMB_ADDR, slave);
	FUNC4(sc, SMB_PRTCL, SMB_PRTCL_READ | SMB_PRTCL_WORD_DATA);

	if ((error = FUNC5(sc)) == SMB_ENOERR) {
		FUNC3(sc, SMB_DATA + 0, &temp[0]);
		FUNC3(sc, SMB_DATA + 1, &temp[1]);
		*word = temp[0] | (temp[1] << 8);
	}

	FUNC0(FUNC7("amdsmb: READW from 0x%x, cmd=0x%x, word=0x%x, "
	    "error=0x%x\n", slave, cmd, (unsigned short)*word, error));
	FUNC2(sc);

	return (error);
}