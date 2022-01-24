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
struct msdosfs_args {int flags; int /*<<< orphan*/  cs_local; int /*<<< orphan*/  cs_dos; int /*<<< orphan*/  cs_win; int /*<<< orphan*/  dirmask; int /*<<< orphan*/  mask; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  fspec; int /*<<< orphan*/  export; } ;
struct mntarg {int dummy; } ;
struct export_args {int dummy; } ;
typedef  int /*<<< orphan*/  exp ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MAXCSLEN ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int MSDOSFSMNT_KICONV ; 
 int MSDOSFSMNT_LONGNAME ; 
 int MSDOSFSMNT_NOWIN95 ; 
 int MSDOSFSMNT_SHORTNAME ; 
 int FUNC0 (void*,struct msdosfs_args*,int) ; 
 int FUNC1 (struct mntarg*,int /*<<< orphan*/ ) ; 
 struct mntarg* FUNC2 (struct mntarg*,char*,struct export_args*,int) ; 
 struct mntarg* FUNC3 (struct mntarg*,int,char*) ; 
 struct mntarg* FUNC4 (struct mntarg*,char*,char*,int /*<<< orphan*/ ) ; 
 struct mntarg* FUNC5 (struct mntarg*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct export_args*) ; 

__attribute__((used)) static int
FUNC7(struct mntarg *ma, void *data, uint64_t flags)
{
	struct msdosfs_args args;
	struct export_args exp;
	int error;

	if (data == NULL)
		return (EINVAL);
	error = FUNC0(data, &args, sizeof args);
	if (error)
		return (error);
	FUNC6(&args.export, &exp);

	ma = FUNC5(ma, "from", args.fspec, MAXPATHLEN);
	ma = FUNC2(ma, "export", &exp, sizeof(exp));
	ma = FUNC4(ma, "uid", "%d", args.uid);
	ma = FUNC4(ma, "gid", "%d", args.gid);
	ma = FUNC4(ma, "mask", "%d", args.mask);
	ma = FUNC4(ma, "dirmask", "%d", args.dirmask);

	ma = FUNC3(ma, args.flags & MSDOSFSMNT_SHORTNAME, "noshortname");
	ma = FUNC3(ma, args.flags & MSDOSFSMNT_LONGNAME, "nolongname");
	ma = FUNC3(ma, !(args.flags & MSDOSFSMNT_NOWIN95), "nowin95");
	ma = FUNC3(ma, args.flags & MSDOSFSMNT_KICONV, "nokiconv");

	ma = FUNC5(ma, "cs_win", args.cs_win, MAXCSLEN);
	ma = FUNC5(ma, "cs_dos", args.cs_dos, MAXCSLEN);
	ma = FUNC5(ma, "cs_local", args.cs_local, MAXCSLEN);

	error = FUNC1(ma, flags);

	return (error);
}