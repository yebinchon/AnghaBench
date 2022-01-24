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
struct ufs_args {int /*<<< orphan*/  fspec; int /*<<< orphan*/  export; } ;
struct mntarg {int dummy; } ;
struct export_args {int dummy; } ;
typedef  int /*<<< orphan*/  exp ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int FUNC0 (void*,struct ufs_args*,int) ; 
 int FUNC1 (struct mntarg*,int /*<<< orphan*/ ) ; 
 struct mntarg* FUNC2 (struct mntarg*,char*,struct export_args*,int) ; 
 struct mntarg* FUNC3 (struct mntarg*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct export_args*) ; 

__attribute__((used)) static int
FUNC5(struct mntarg *ma, void *data, uint64_t flags)
{
	struct ufs_args args;
	struct export_args exp;
	int error;

	if (data == NULL)
		return (EINVAL);
	error = FUNC0(data, &args, sizeof args);
	if (error)
		return (error);
	FUNC4(&args.export, &exp);

	ma = FUNC3(ma, "from", args.fspec, MAXPATHLEN);
	ma = FUNC2(ma, "export", &exp, sizeof(exp));
	error = FUNC1(ma, flags);

	return (error);
}