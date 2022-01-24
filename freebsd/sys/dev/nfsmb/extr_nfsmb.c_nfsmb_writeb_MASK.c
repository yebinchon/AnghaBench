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
 int /*<<< orphan*/  FUNC2 (struct nfsmb_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsmb_softc*) ; 
 int /*<<< orphan*/  SMB_ADDR ; 
 int /*<<< orphan*/  SMB_CMD ; 
 int /*<<< orphan*/  SMB_DATA ; 
 int /*<<< orphan*/  SMB_PRTCL ; 
 int SMB_PRTCL_BYTE_DATA ; 
 int SMB_PRTCL_WRITE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nfsmb_softc*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char,char,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev, u_char slave, char cmd, char byte)
{
	struct nfsmb_softc *sc = (struct nfsmb_softc *)FUNC4(dev);
	int error;

	FUNC1(sc);
	FUNC2(sc, SMB_CMD, cmd);
	FUNC2(sc, SMB_DATA, byte);
	FUNC2(sc, SMB_ADDR, slave);
	FUNC2(sc, SMB_PRTCL, SMB_PRTCL_WRITE | SMB_PRTCL_BYTE_DATA);

	error = FUNC5(sc);

	FUNC0(FUNC6("nfsmb: WRITEB to 0x%x, cmd=0x%x, byte=0x%x, error=0x%x\n", slave, cmd, byte, error));
	FUNC3(sc);

	return (error);
}