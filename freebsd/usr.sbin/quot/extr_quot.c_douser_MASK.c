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
typedef  union dinode {int dummy; } dinode ;
struct user {char* name; int /*<<< orphan*/  spc90; int /*<<< orphan*/  spc60; int /*<<< orphan*/  spc30; scalar_t__ count; int /*<<< orphan*/  space; } ;
struct fs {int fs_ncg; int fs_ipg; } ;
typedef  int ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fs*,union dinode*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fs*,union dinode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct user*,int) ; 
 scalar_t__ count ; 
 int /*<<< orphan*/  di_atime ; 
 int /*<<< orphan*/  di_uid ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 scalar_t__ estimate ; 
 int /*<<< orphan*/  FUNC6 (struct user*) ; 
 union dinode* FUNC7 (int,struct fs*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct fs*,union dinode*) ; 
 scalar_t__ FUNC9 (int) ; 
 int nusers ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct user*) ; 
 scalar_t__ unused ; 
 int /*<<< orphan*/  users ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct fs*,union dinode*) ; 

__attribute__((used)) static void
FUNC14(int fd, struct fs *super, char *name)
{
	ino_t inode, maxino;
	struct user *usr, *usrs;
	union dinode *dp;
	int n;

	maxino = super->fs_ncg * super->fs_ipg - 1;
	for (inode = 0; inode < maxino; inode++) {
		errno = 0;
		if ((dp = FUNC7(fd,super,inode))
		    && !FUNC8(super, dp))
			FUNC12(FUNC0(super, dp, di_uid),
			    estimate ? FUNC13(super, dp) :
				FUNC2(super, dp),
			    FUNC0(super, dp, di_atime));
		else if (errno) {
			FUNC4(1, "%s", name);
		}
	}
	if (!(usrs = (struct user *)FUNC9(nusers * sizeof(struct user))))
		FUNC5(1, "allocate users");
	FUNC3(users,usrs,nusers * sizeof(struct user));
	FUNC11(usrs);
	for (usr = usrs, n = nusers; --n >= 0 && usr->count; usr++) {
		FUNC10("%5d",FUNC1(usr->space));
		if (count)
			FUNC10("\t%5ld",usr->count);
		FUNC10("\t%-8s",usr->name);
		if (unused)
			FUNC10("\t%5d\t%5d\t%5d",
			       FUNC1(usr->spc30),
			       FUNC1(usr->spc60),
			       FUNC1(usr->spc90));
		FUNC10("\n");
	}
	FUNC6(usrs);
}