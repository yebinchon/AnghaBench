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
typedef  union dinode {int dummy; } dinode ;
typedef  int uintmax_t ;
struct fs {int fs_ncg; int fs_ipg; } ;
typedef  int ino_t ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fs*,union dinode*,int /*<<< orphan*/ ) ; 
 int EOF ; 
 int /*<<< orphan*/  di_uid ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 scalar_t__ errno ; 
 union dinode* FUNC2 (int,struct fs*,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct fs*,union dinode*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int FUNC7 (char*,int*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

__attribute__((used)) static void
FUNC11(int fd, struct fs *super, char *name)
{
	int c;
	ino_t maxino;
	uintmax_t inode;
	union dinode *dp;

	maxino = super->fs_ncg * super->fs_ipg - 1;
	/* first skip the name of the filesystem */
	while ((c = FUNC3()) != EOF && (c < '0' || c > '9'))
		while ((c = FUNC3()) != EOF && c != '\n');
	FUNC8(c,stdin);
	while (FUNC7("%ju", &inode) == 1) {
		if (inode > maxino) {
			FUNC10("illegal inode %ju", inode);
			return;
		}
		errno = 0;
		if ((dp = FUNC2(fd,super,inode))
		    && !FUNC4(super, dp)) {
			FUNC5("%s\t",FUNC9(FUNC0(super, dp, di_uid))->name);
			/* now skip whitespace */
			while ((c = FUNC3()) == ' ' || c == '\t');
			/* and print out the remainder of the input line */
			while (c != EOF && c != '\n') {
				FUNC6(c);
				c = FUNC3();
			}
			FUNC6('\n');
		} else {
			if (errno) {
				FUNC1(1, "%s", name);
			}
			/* skip this line */
			while ((c = FUNC3()) != EOF && c != '\n');
		}
		if (c == EOF)
			break;
	}
}