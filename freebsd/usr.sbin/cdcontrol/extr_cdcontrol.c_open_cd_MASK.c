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
 scalar_t__ ENOENT ; 
 scalar_t__ ENXIO ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 char* _PATH_DEV ; 
 char* cdname ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 scalar_t__ errno ; 
 int fd ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4(void)
{
	char devbuf[MAXPATHLEN];
	const char *dev;

	if (fd > -1)
		return (1);

	if (cdname) {
	    if (*cdname == '/') {
		    FUNC2 (devbuf, MAXPATHLEN, "%s", cdname);
	    } else {
		    FUNC2 (devbuf, MAXPATHLEN, "%s%s", _PATH_DEV, cdname);
	    }
	    fd = FUNC1 (dev = devbuf, O_RDONLY);
	} else {
	    fd = FUNC1(dev = "/dev/cdrom", O_RDONLY);
	    if (fd < 0 && errno == ENOENT)
		fd = FUNC1(dev = "/dev/cd0", O_RDONLY);
	}

	if (fd < 0) {
		if (errno == ENXIO) {
			/*  ENXIO has an overloaded meaning here.
			 *  The original "Device not configured" should
			 *  be interpreted as "No disc in drive %s". */
			FUNC3("no disc in drive %s", dev);
			return (0);
		}
		FUNC0(1, "%s", dev);
	}
	return (1);
}