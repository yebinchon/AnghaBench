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
struct devfs_rule {int dr_icond; int dr_dswflags; } ;
struct devfs_mount {int dummy; } ;
struct devfs_krule {struct devfs_rule dk_rule; } ;
struct devfs_dirent {int dummy; } ;
struct cdevsw {int d_flags; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int DRC_DSWFLAGS ; 
 int DRC_PATHPTRN ; 
 struct cdevsw* FUNC0 (struct cdev*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*,int) ; 
 struct cdev* FUNC2 (struct devfs_dirent*) ; 
 int /*<<< orphan*/  FUNC3 (struct devfs_krule*,struct devfs_mount*,struct devfs_dirent*) ; 

__attribute__((used)) static int
FUNC4(struct devfs_krule *dk, struct devfs_mount *dm,
    struct devfs_dirent *de)
{
	struct devfs_rule *dr = &dk->dk_rule;
	struct cdev *dev;
	struct cdevsw *dsw;
	int ref;

	dev = FUNC2(de);
	/*
	 * At this point, if dev is NULL, we should assume that any
	 * criteria that depend on it don't match.  We should *not*
	 * just ignore them (i.e., act like they weren't specified),
	 * since that makes a rule that only has criteria dependent on
	 * the struct cdev *match all symlinks and directories.
	 *
	 * Note also that the following tests are somewhat reversed:
	 * They're actually testing to see whether the condition does
	 * *not* match, since the default is to assume the rule should
	 * be run (such as if there are no conditions).
	 */
	if (dr->dr_icond & DRC_DSWFLAGS) {
		if (dev == NULL)
			return (0);
		dsw = FUNC0(dev, &ref);
		if (dsw == NULL)
			return (0);
		if ((dsw->d_flags & dr->dr_dswflags) == 0) {
			FUNC1(dev, ref);
			return (0);
		}
		FUNC1(dev, ref);
	}
	if (dr->dr_icond & DRC_PATHPTRN)
		if (!FUNC3(dk, dm, de))
			return (0);

	return (1);
}