#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* devname; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ devid_nmlist_t ;
typedef  int /*<<< orphan*/  ddi_devid_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEVID_MINOR_NAME_ALL ; 
 int O_NDELAY ; 
 int O_RDONLY ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,char**) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,...) ; 

int
FUNC11(int argc, char *argv[])
{
	int		fd;
	ddi_devid_t	devid;
	char		*minor_name, *devidstr, *device;
#ifdef DEBUG
	devid_nmlist_t  *list = NULL;
	char		*search_path;
	int		i;
#endif

	if (argc == 1) {
		(void) FUNC10("%s <devicepath> [search path]\n",
		    argv[0]);
		FUNC7(1);
	}
	device = argv[1];

	if ((fd = FUNC8(device, O_RDONLY|O_NDELAY)) < 0) {
		FUNC9(device);
		FUNC7(1);
	}
	if (FUNC3(fd, &devid) != 0) {
		FUNC9("devid_get");
		FUNC7(1);
	}
	if (FUNC4(fd, &minor_name) != 0) {
		FUNC9("devid_get_minor_name");
		FUNC7(1);
	}
	if ((devidstr = FUNC5(devid, minor_name)) == 0) {
		FUNC9("devid_str_encode");
		FUNC7(1);
	}

	(void) FUNC10("devid %s\n", devidstr);

	FUNC6(devidstr);

#ifdef DEBUG
	if (argc == 3) {
		search_path = argv[2];
	} else {
		search_path = "/dev/";
	}

	if (devid_deviceid_to_nmlist(search_path, devid, DEVID_MINOR_NAME_ALL,
	    &list)) {
		perror("devid_deviceid_to_nmlist");
		exit(1);
	}

	/* loop through list and process device names and numbers */
	for (i = 0; list[i].devname != NULL; i++) {
		(void) printf("devname: %s %p\n", list[i].devname, list[i].dev);
	}
	devid_free_nmlist(list);

#endif /* DEBUG */

	FUNC6(minor_name);
	FUNC1(devid);

	return (0);
}