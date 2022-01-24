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

/* Variables and functions */
 int /*<<< orphan*/  MLXD_CHECKASYNC ; 
 int FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int
FUNC7(int argc, char *argv[])
{
    int		unit, fd, result;

    if (argc != 2)
	return(FUNC0(argc, argv));

    if ((unit = FUNC2(argv[1])) == -1) {
	FUNC6("'%s' is not a valid drive", argv[1]);
    } else {
	
	/* Get the device */
	if ((fd = FUNC4(FUNC1(unit), 0)) < 0) {
	    FUNC5("can't open %s", FUNC1(unit));
	} else {
	    /* Try to start the check */
	    if ((FUNC3(fd, MLXD_CHECKASYNC, &result)) < 0) {
		switch(result) {
		case 0x0002:
		    FUNC6("one or more of the SCSI disks on which the drive '%s' depends is DEAD", argv[1]);
		    break;
		case 0x0105:
		    FUNC6("drive %s is invalid, or not a drive which can be checked", argv[1]);
		    break;
		case 0x0106:
		    FUNC6("drive rebuild or consistency check is already in progress on this controller");
		    break;
		default:
		    FUNC5("ioctl MLXD_CHECKASYNC");
		}
	    }
	}
    }
    return(0);
}