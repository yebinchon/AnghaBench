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
typedef  int /*<<< orphan*/  uint64_t ;
struct smbfs_args {scalar_t__ version; int flags; int /*<<< orphan*/  caseopt; int /*<<< orphan*/  dir_mode; int /*<<< orphan*/  file_mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  root_path; int /*<<< orphan*/  dev; } ;
struct mntarg {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int SMBFS_MOUNT_HAVE_NLS ; 
 int SMBFS_MOUNT_INTR ; 
 int SMBFS_MOUNT_NO_LONG ; 
 int SMBFS_MOUNT_SOFT ; 
 int SMBFS_MOUNT_STRONG ; 
 scalar_t__ SMBFS_VERSION ; 
 int FUNC0 (void*,struct smbfs_args*,int) ; 
 int FUNC1 (struct mntarg*,int /*<<< orphan*/ ) ; 
 struct mntarg* FUNC2 (struct mntarg*,char*,int /*<<< orphan*/ ,int) ; 
 struct mntarg* FUNC3 (struct mntarg*,int,char*) ; 
 struct mntarg* FUNC4 (struct mntarg*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct mntarg *ma, void * data, uint64_t flags)
{
	struct smbfs_args args;
	int error;

	error = FUNC0(data, &args, sizeof(struct smbfs_args));
	if (error)
		return error;

	if (args.version != SMBFS_VERSION) {
		FUNC5("mount version mismatch: kernel=%d, mount=%d\n",
		    SMBFS_VERSION, args.version);
		return EINVAL;
	}
	ma = FUNC4(ma, "dev", "%d", args.dev);
	ma = FUNC3(ma, args.flags & SMBFS_MOUNT_SOFT, "nosoft");
	ma = FUNC3(ma, args.flags & SMBFS_MOUNT_INTR, "nointr");
	ma = FUNC3(ma, args.flags & SMBFS_MOUNT_STRONG, "nostrong");
	ma = FUNC3(ma, args.flags & SMBFS_MOUNT_HAVE_NLS, "nohave_nls");
	ma = FUNC3(ma, !(args.flags & SMBFS_MOUNT_NO_LONG), "nolong");
	ma = FUNC2(ma, "rootpath", args.root_path, -1);
	ma = FUNC4(ma, "uid", "%d", args.uid);
	ma = FUNC4(ma, "gid", "%d", args.gid);
	ma = FUNC4(ma, "file_mode", "%d", args.file_mode);
	ma = FUNC4(ma, "dir_mode", "%d", args.dir_mode);
	ma = FUNC4(ma, "caseopt", "%d", args.caseopt);

	error = FUNC1(ma, flags);

	return (error);
}