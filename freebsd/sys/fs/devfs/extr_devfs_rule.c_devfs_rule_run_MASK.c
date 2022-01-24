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
struct devfs_ruleset {int dummy; } ;
struct devfs_rule {int dr_iacts; int dr_bacts; int /*<<< orphan*/  dr_incset; int /*<<< orphan*/  dr_mode; int /*<<< orphan*/  dr_gid; int /*<<< orphan*/  dr_uid; } ;
struct devfs_mount {int dummy; } ;
struct devfs_krule {struct devfs_rule dk_rule; } ;
struct devfs_dirent {int /*<<< orphan*/  de_mode; int /*<<< orphan*/  de_gid; int /*<<< orphan*/  de_uid; int /*<<< orphan*/  de_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DE_WHITEOUT ; 
 int DRA_BACTS ; 
 int DRA_GID ; 
 int DRA_INCSET ; 
 int DRA_MODE ; 
 int DRA_UID ; 
 int DRB_HIDE ; 
 int DRB_UNHIDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct devfs_krule*,struct devfs_mount*,struct devfs_dirent*) ; 
 int /*<<< orphan*/  FUNC2 (struct devfs_ruleset*,struct devfs_mount*,struct devfs_dirent*,unsigned int) ; 
 struct devfs_ruleset* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct devfs_krule *dk,  struct devfs_mount *dm,
    struct devfs_dirent *de, unsigned depth)
{
	struct devfs_rule *dr = &dk->dk_rule;
	struct devfs_ruleset *ds;

	if (!FUNC1(dk, dm, de))
		return;
	if (dr->dr_iacts & DRA_BACTS) {
		if (dr->dr_bacts & DRB_HIDE)
			de->de_flags |= DE_WHITEOUT;
		if (dr->dr_bacts & DRB_UNHIDE)
			de->de_flags &= ~DE_WHITEOUT;
	}
	if (dr->dr_iacts & DRA_UID)
		de->de_uid = dr->dr_uid;
	if (dr->dr_iacts & DRA_GID)
		de->de_gid = dr->dr_gid;
	if (dr->dr_iacts & DRA_MODE)
		de->de_mode = dr->dr_mode;
	if (dr->dr_iacts & DRA_INCSET) {
		/*
		 * XXX: we should tell the user if the depth is exceeded here
		 * XXX: but it is not obvious how to.  A return value will
		 * XXX: not work as this is called when devices are created
		 * XXX: long time after the rules were instantiated.
		 * XXX: a printf() would probably give too much noise, or
		 * XXX: DoS the machine.  I guess a rate-limited message
		 * XXX: might work.
		 */
		if (depth > 0) {
			ds = FUNC3(dk->dk_rule.dr_incset);
			FUNC0(ds != NULL, ("DRA_INCSET but bad dr_incset"));
			FUNC2(ds, dm, de, depth - 1);
		}
	}
}