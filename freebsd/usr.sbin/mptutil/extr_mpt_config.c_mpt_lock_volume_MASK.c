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
struct mpt_query_disk {int /*<<< orphan*/  devname; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  U8 ;

/* Variables and functions */
 int ENOENT ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_RDWR ; 
 char* _PATH_DEV ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mpt_query_disk*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

int
FUNC5(U8 VolumeBus, U8 VolumeID)
{
	char path[MAXPATHLEN];
	struct mpt_query_disk qd;
	int error, vfd;

	error = FUNC0(VolumeBus, VolumeID, &qd);
	if (error == ENOENT)
		/*
		 * This means there isn't a CAM device associated with
		 * the volume, and thus it is already implicitly
		 * locked, so just return.
		 */
		return (0);
	if (error) {
		FUNC4(error, "Unable to lookup volume device name");
		return (error);
	}
	FUNC2(path, sizeof(path), "%s%s", _PATH_DEV, qd.devname);
	vfd = FUNC1(path, O_RDWR);
	if (vfd < 0) {
		error = errno;
		FUNC3("Unable to lock volume %s", qd.devname);
		return (error);
	}
	return (0);
}