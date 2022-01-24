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
struct TYPE_2__ {int /*<<< orphan*/ * val; } ;
struct statfs {int /*<<< orphan*/  f_mntonname; TYPE_1__ f_fsid; } ;

/* Variables and functions */
 int MNT_BYFSID ; 
 int MNT_FORCE ; 
 int FUNC0 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int) ; 

__attribute__((used)) static int
FUNC6(const struct statfs *sb, bool force)
{
	char *fsid_str;
	int error, ret, flags;

	ret = FUNC0(&fsid_str, "FSID:%d:%d",
	    sb->f_fsid.val[0], sb->f_fsid.val[1]);
	if (ret < 0)
		FUNC3(1, "asprintf");

	FUNC2("unmounting %s using %s", sb->f_mntonname, fsid_str);

	flags = MNT_BYFSID;
	if (force)
		flags |= MNT_FORCE;
	error = FUNC5(fsid_str, flags);
	FUNC1(fsid_str);
	if (error != 0)
		FUNC4("cannot unmount %s", sb->f_mntonname);

	return (error);
}