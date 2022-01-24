#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct volume_info {int drive_count; struct drive_info* drives; } ;
struct drive_info {int /*<<< orphan*/ * info; TYPE_1__* sdisk; } ;
typedef  int U8 ;
struct TYPE_2__ {char* devname; } ;

/* Variables and functions */
 int errno ; 
 scalar_t__ FUNC0 (int,TYPE_1__*,int*) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int
FUNC4(int fd, struct volume_info *info, int verbose)
{
	struct drive_info *dinfo;
	U8 PhysDiskNum;
	int error, i;

	for (i = 0, dinfo = info->drives; i < info->drive_count;
	     i++, dinfo++) {
		if (dinfo->info == NULL) {
			if (FUNC0(fd, dinfo->sdisk,
			    &PhysDiskNum) < 0) {
				error = errno;
				FUNC3(
			    "Failed to create physical disk page for %s",
				    dinfo->sdisk->devname);
				return (error);
			}
			if (verbose)
				FUNC2("Added drive %s with PhysDiskNum %u\n",
				    dinfo->sdisk->devname, PhysDiskNum);

			dinfo->info = FUNC1(fd, PhysDiskNum, NULL);
			if (dinfo->info == NULL)
				return (errno);
		}
	}
	return (0);
}