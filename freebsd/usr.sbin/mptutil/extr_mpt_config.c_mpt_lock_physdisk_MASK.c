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
struct mpt_standalone_disk {int /*<<< orphan*/  devname; } ;
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_RDWR ; 
 char* _PATH_DEV ; 
 int errno ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct mpt_standalone_disk *disk)
{
	char path[MAXPATHLEN];
	int dfd, error;

	FUNC1(path, sizeof(path), "%s%s", _PATH_DEV, disk->devname);
	dfd = FUNC0(path, O_RDWR);
	if (dfd < 0) {
		error = errno;
		FUNC2("Unable to lock disk %s", disk->devname);
		return (error);
	}
	return (0);
}