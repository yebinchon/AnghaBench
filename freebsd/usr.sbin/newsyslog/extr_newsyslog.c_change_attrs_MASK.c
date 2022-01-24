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
typedef  scalar_t__ uid_t ;
struct conf_entry {int permissions; scalar_t__ uid; int gid; int flags; } ;
typedef  int gid_t ;

/* Variables and functions */
 int CE_NODUMP ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  UF_NODUMP ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int) ; 
 int FUNC2 (char const*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*) ; 
 scalar_t__ errno ; 
 scalar_t__ noaction ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static void
FUNC6(const char *fname, const struct conf_entry *ent)
{
	int failed;

	if (noaction) {
		FUNC4("\tchmod %o %s\n", ent->permissions, fname);

		if (ent->uid != (uid_t)-1 || ent->gid != (gid_t)-1)
			FUNC4("\tchown %u:%u %s\n",
			    ent->uid, ent->gid, fname);

		if (ent->flags & CE_NODUMP)
			FUNC4("\tchflags nodump %s\n", fname);
		return;
	}

	failed = FUNC1(fname, ent->permissions);
	if (failed) {
		if (errno != EPERM)
			FUNC3(1, "chmod(%s) in change_attrs", fname);
		FUNC5("change_attrs couldn't chmod(%s)", fname);
	}

	if (ent->uid != (uid_t)-1 || ent->gid != (gid_t)-1) {
		failed = FUNC2(fname, ent->uid, ent->gid);
		if (failed)
			FUNC5("can't chown %s", fname);
	}

	if (ent->flags & CE_NODUMP) {
		failed = FUNC0(fname, UF_NODUMP);
		if (failed)
			FUNC5("can't chflags %s NODUMP", fname);
	}
}