#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * val; } ;
typedef  TYPE_1__ fsid_t ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 int MNT_BYFSID ; 
 int MNT_NONBUSY ; 
 int FUNC0 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (char*,int) ; 

__attribute__((used)) static int
FUNC7(const fsid_t fsid, const char *mountpoint)
{
	char *fsid_str;
	int error, ret;

	ret = FUNC0(&fsid_str, "FSID:%d:%d", fsid.val[0], fsid.val[1]);
	if (ret < 0)
		FUNC3(1, "asprintf");

	error = FUNC6(fsid_str, MNT_NONBUSY | MNT_BYFSID);
	if (error != 0) {
		if (errno == EBUSY) {
			FUNC2("cannot unmount %s (%s): %s",
			    mountpoint, fsid_str, FUNC5(errno));
		} else {
			FUNC4("cannot unmount %s (%s)",
			    mountpoint, fsid_str);
		}
	}

	FUNC1(fsid_str);

	return (error);
}