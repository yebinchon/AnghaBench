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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsmb_softc*) ; 
 int FUNC3 (struct nfsmb_softc*,int /*<<< orphan*/ ) ; 
 int SMB_EBUSERR ; 
 int SMB_EBUSY ; 
 int SMB_ENOACK ; 
 int SMB_ENOERR ; 
 int SMB_ENOTSUPP ; 
 int SMB_ETIMEOUT ; 
 int /*<<< orphan*/  SMB_PRTCL ; 
 int /*<<< orphan*/  SMB_STS ; 
#define  SMB_STS_B 134 
#define  SMB_STS_DAD 133 
#define  SMB_STS_DANA 132 
#define  SMB_STS_DCAD 131 
#define  SMB_STS_HUP 130 
#define  SMB_STS_OK 129 
 int SMB_STS_STATUS ; 
#define  SMB_STS_T 128 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int
FUNC5(struct nfsmb_softc *sc)
{
	u_char sts;
	int error, count;

	FUNC2(sc);
	if (FUNC3(sc, SMB_PRTCL) != 0)
	{
		count = 10000;
		do {
			FUNC0(500);
		} while (FUNC3(sc, SMB_PRTCL) != 0 && count--);
		if (count == 0)
			return (SMB_ETIMEOUT);
	}

	sts = FUNC3(sc, SMB_STS) & SMB_STS_STATUS;
	FUNC1(FUNC4("nfsmb: STS=0x%x\n", sts));

	switch (sts) {
	case SMB_STS_OK:
		error = SMB_ENOERR;
		break;
	case SMB_STS_DANA:
		error = SMB_ENOACK;
		break;
	case SMB_STS_B:
		error = SMB_EBUSY;
		break;
	case SMB_STS_T:
		error = SMB_ETIMEOUT;
		break;
	case SMB_STS_DCAD:
	case SMB_STS_DAD:
	case SMB_STS_HUP:
		error = SMB_ENOTSUPP;
		break;
	default:
		error = SMB_EBUSERR;
		break;
	}

	return (error);
}