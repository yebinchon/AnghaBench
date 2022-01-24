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
typedef  int /*<<< orphan*/  uid_t ;
struct stat {int st_mode; int st_flags; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  lnk ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  copybuf ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 scalar_t__ EEXIST ; 
 int MAXPATHLEN ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_DIRECTORY ; 
 int O_EXCL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_RDWR ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int _DEF_DIRMODE ; 
 int /*<<< orphan*/  FUNC3 (int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 int FUNC10 (int,char*,struct stat*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int,char const*,int) ; 
 int FUNC12 (int,char const*,int,...) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int) ; 
 struct dirent* FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int,char*,char*,int) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 scalar_t__ FUNC17 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC20 (int,char*,int /*<<< orphan*/ ) ; 

void
FUNC21(int rootfd, char const * dir, int skelfd, mode_t mode, uid_t uid,
    gid_t gid, int flags)
{
	char		*p, lnk[MAXPATHLEN], copybuf[4096];
	int		len, homefd, srcfd, destfd;
	ssize_t		sz;
	struct stat     st;
	struct dirent  *e;
	DIR		*d;

	if (*dir == '/')
		dir++;

	if (FUNC11(rootfd, dir, mode) != 0 && errno != EEXIST) {
		FUNC19("mkdir(%s)", dir);
		return;
	}
	FUNC8(rootfd, dir, uid, gid, AT_SYMLINK_NOFOLLOW);
	if (flags > 0)
		FUNC3(rootfd, dir, flags, AT_SYMLINK_NOFOLLOW);

	if (skelfd == -1)
		return;

	homefd = FUNC12(rootfd, dir, O_DIRECTORY);
	if ((d = FUNC9(skelfd)) == NULL) {
		FUNC4(skelfd);
		FUNC4(homefd);
		return;
	}

	while ((e = FUNC14(d)) != NULL) {
		if (FUNC16(e->d_name, ".") == 0 || FUNC16(e->d_name, "..") == 0)
			continue;

		p = e->d_name;
		if (FUNC10(skelfd, p, &st, AT_SYMLINK_NOFOLLOW) == -1)
			continue;

		if (FUNC17(p, "dot.", 4) == 0)	/* Conversion */
			p += 3;

		if (FUNC0(st.st_mode)) {
			FUNC21(homefd, p, FUNC12(skelfd, e->d_name, O_DIRECTORY),
			    st.st_mode & _DEF_DIRMODE, uid, gid, st.st_flags);
			continue;
		}

		if (FUNC1(st.st_mode) &&
		    (len = FUNC15(skelfd, e->d_name, lnk, sizeof(lnk) -1))
		    != -1) {
			lnk[len] = '\0';
			FUNC18(lnk, homefd, p);
			FUNC8(homefd, p, uid, gid, AT_SYMLINK_NOFOLLOW);
			continue;
		}

		if (!FUNC2(st.st_mode))
			continue;

		if ((srcfd = FUNC12(skelfd, e->d_name, O_RDONLY)) == -1)
			continue;
		destfd = FUNC12(homefd, p, O_RDWR | O_CREAT | O_EXCL,
		    st.st_mode);
		if (destfd == -1) {
			FUNC4(srcfd);
			continue;
		}

		while ((sz = FUNC13(srcfd, copybuf, sizeof(copybuf))) > 0)
			FUNC20(destfd, copybuf, sz);

		FUNC4(srcfd);
		/*
		 * Propagate special filesystem flags
		 */
		FUNC7(destfd, uid, gid);
		FUNC6(destfd, st.st_flags);
		FUNC4(destfd);
	}
	FUNC5(d);
}