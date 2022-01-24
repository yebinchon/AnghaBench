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
struct nfsmb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsmb_softc*) ; 
 int FUNC2 (struct nfsmb_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsmb_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsmb_softc*) ; 
 int /*<<< orphan*/  SMB_ADDR ; 
 scalar_t__ SMB_BCNT ; 
 int /*<<< orphan*/  SMB_CMD ; 
 scalar_t__ SMB_DATA ; 
 int SMB_EINVAL ; 
 int SMB_ENOERR ; 
 int /*<<< orphan*/  SMB_PRTCL ; 
 int SMB_PRTCL_BLOCK_DATA ; 
 int SMB_PRTCL_READ ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nfsmb_softc*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,char,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev, u_char slave, char cmd, u_char *count, char *buf)
{
	struct nfsmb_softc *sc = (struct nfsmb_softc *)FUNC5(dev);
	u_char data, len, i;
	int error;

	if (*count < 1 || *count > 32)
		return (SMB_EINVAL);

	FUNC1(sc);
	FUNC3(sc, SMB_CMD, cmd);
	FUNC3(sc, SMB_ADDR, slave);
	FUNC3(sc, SMB_PRTCL, SMB_PRTCL_READ | SMB_PRTCL_BLOCK_DATA);

	if ((error = FUNC6(sc)) == SMB_ENOERR) {
		len = FUNC2(sc, SMB_BCNT);
		for (i = 0; i < len; i++) {
			data = FUNC2(sc, SMB_DATA + i);
			if (i < *count)
				buf[i] = data;
		}
		*count = len;
	}

	FUNC0(FUNC7("nfsmb: READBLK to 0x%x, count=0x%x, cmd=0x%x, error=0x%x", slave, *count, cmd, error));
	FUNC4(sc);

	return (error);
}