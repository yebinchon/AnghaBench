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
struct disk_entry {char* dev_name; int capacity; int /*<<< orphan*/  index; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  dev_path ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int INT_MAX ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 char* _PATH_DEV ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct disk_entry *entry)
{
	char dev_path[128];
	int fd;
	off_t mediasize;

	if (entry == NULL || entry->dev_name[0] == '\0')
		return;

	FUNC5(dev_path, sizeof(dev_path),
	    "%s%s", _PATH_DEV, entry->dev_name);
	entry->capacity = 0;

	FUNC0("OPENING device %s", dev_path);
	if ((fd = FUNC3(dev_path, O_RDONLY|O_NONBLOCK)) == -1) {
		FUNC0("OPEN device %s failed: %s", dev_path, FUNC6(errno));
		return;
	}

	if (FUNC2(fd, DIOCGMEDIASIZE, &mediasize) < 0) {
		FUNC0("DIOCGMEDIASIZE for device %s failed: %s",
		    dev_path, FUNC6(errno));
		(void)FUNC1(fd);
		return;
	}

	mediasize = mediasize / 1024;
	entry->capacity = (mediasize > INT_MAX ? INT_MAX : mediasize);
	FUNC4(entry->index, entry->dev_name);

	(void)FUNC1(fd);
}