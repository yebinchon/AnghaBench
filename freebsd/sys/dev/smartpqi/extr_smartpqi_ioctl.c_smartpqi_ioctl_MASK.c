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
typedef  int u_long ;
struct thread {int dummy; } ;
struct pqisrc_softstate {int dummy; } ;
struct cdev {struct pqisrc_softstate* si_drv1; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
#define  CCISS_GETDRIVVER 132 
#define  CCISS_GETPCIINFO 131 
#define  CCISS_PASSTHRU 130 
#define  CCISS_REGNEWD 129 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int ENOTTY ; 
 int PQI_STATUS_SUCCESS ; 
#define  SMARTPQI_PASS_THRU 128 
 scalar_t__ FUNC3 (struct pqisrc_softstate*) ; 
 int FUNC4 (struct pqisrc_softstate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pqisrc_softstate*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct cdev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct cdev*) ; 

__attribute__((used)) static int FUNC8(struct cdev *cdev, u_long cmd, caddr_t udata,
		int flags, struct thread *td)
{
	int error = PQI_STATUS_SUCCESS;
	struct pqisrc_softstate *softs = cdev->si_drv1;

	FUNC1("IN cmd = 0x%lx udata = %p cdev = %p\n", cmd, udata, cdev);

	if (!udata) {
		FUNC0("udata is null !!\n");
	}

	if (FUNC3(softs)){
		FUNC0("Controller s offline !!\n");
		return ENOTTY;
	}

	switch (cmd) {
		case CCISS_GETDRIVVER:
			FUNC6(udata, cdev);
			break;
		case CCISS_GETPCIINFO:
			FUNC7(udata, cdev);
			break;
		case SMARTPQI_PASS_THRU:
		case CCISS_PASSTHRU:
			error = FUNC4(softs, udata, 0);
			error = PQI_STATUS_SUCCESS;
			break;
		case CCISS_REGNEWD:
			error = FUNC5(softs);
			break;
		default:
			FUNC2( "!IOCTL cmd 0x%lx not supported", cmd);
			error = ENOTTY;
			break;
	}

	FUNC1("OUT error = %d\n", error);
	return error;
}