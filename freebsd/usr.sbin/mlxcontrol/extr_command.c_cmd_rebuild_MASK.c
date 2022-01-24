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
struct mlx_rebuild_request {int rr_status; int /*<<< orphan*/  rr_target; int /*<<< orphan*/  rr_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX_REBUILDASYNC ; 
 int FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct mlx_rebuild_request*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int
FUNC8(int argc, char *argv[])
{
    struct mlx_rebuild_request	rb;
    int				unit, fd;

    if (argc != 3)
	return(FUNC0(argc, argv));

    /* parse arguments */
    if ((unit = FUNC2(argv[1])) == -1) {
	FUNC7("'%s' is not a valid controller", argv[1]);
	return(1);
    }
    /* try diskXXXX and unknownXXXX as we report the latter for a dead drive ... */
    if ((FUNC5(argv[2], "disk%2d%2d", &rb.rr_channel, &rb.rr_target) != 2) &&
	(FUNC5(argv[2], "unknown%2d%2d", &rb.rr_channel, &rb.rr_target) != 2)) {	
	FUNC7("'%s' is not a valid physical drive", argv[2]);
	return(1);
    }
    /* get the device */
    if ((fd = FUNC4(FUNC1(unit), 0)) < 0) {
	FUNC6("can't open %s", FUNC1(unit));
	return(1);
    }
    /* try to start the rebuild */
    if ((FUNC3(fd, MLX_REBUILDASYNC, &rb)) < 0) {
	switch(rb.rr_status) {
	case 0x0002:
	    FUNC7("the drive at %d:%d is already ONLINE", rb.rr_channel, rb.rr_target);
	    break;
	case 0x0004:
	    FUNC7("drive failed during rebuild");
	    break;
	case 0x0105:
	    FUNC7("there is no drive at channel %d, target %d", rb.rr_channel, rb.rr_target);
	    break;
	case 0x0106:
	    FUNC7("drive rebuild or consistency check is already in progress on this controller");
	    break;
	default:
	    FUNC6("ioctl MLXD_REBUILDASYNC");
	}
    }
    return(0);
}