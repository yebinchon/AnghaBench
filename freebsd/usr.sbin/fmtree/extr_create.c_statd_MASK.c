#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uid_t ;
typedef  scalar_t__ u_short ;
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  u ;
struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  m ;
typedef  int gid_t ;
typedef  int /*<<< orphan*/  g ;
typedef  int /*<<< orphan*/  f ;
struct TYPE_7__ {TYPE_1__* fts_statp; struct TYPE_7__* fts_link; } ;
struct TYPE_6__ {int st_mode; int st_gid; int st_uid; scalar_t__ st_flags; } ;
typedef  TYPE_2__ FTSENT ;
typedef  int /*<<< orphan*/  FTS ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int F_FLAGS ; 
 int F_GID ; 
 int F_GNAME ; 
 int F_MODE ; 
 int F_NLINK ; 
 int F_UID ; 
 int F_UNAME ; 
 int MAXFLAGS ; 
 int MAXGID ; 
 int MAXMODE ; 
 int MAXUID ; 
 int MBITS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int) ; 
 scalar_t__ dflag ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 char* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct group* FUNC9 (int) ; 
 struct passwd* FUNC10 (int) ; 
 int keys ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 scalar_t__ wflag ; 

__attribute__((used)) static int
FUNC13(FTS *t, FTSENT *parent, uid_t *puid, gid_t *pgid, mode_t *pmode, u_long *pflags)
{
	FTSENT *p;
	gid_t sgid;
	uid_t suid;
	mode_t smode;
	u_long sflags;
	struct group *gr;
	struct passwd *pw;
	gid_t savegid = *pgid;
	uid_t saveuid = *puid;
	mode_t savemode = *pmode;
	u_long saveflags = *pflags;
	u_short maxgid, maxuid, maxmode, maxflags;
	u_short g[MAXGID], u[MAXUID], m[MAXMODE], f[MAXFLAGS];
	char *fflags;
	static int first = 1;

	if ((p = FUNC8(t, 0)) == NULL) {
		if (errno)
			FUNC4(1, "%s", FUNC1(parent));
		return (1);
	}

	FUNC3(g, sizeof(g));
	FUNC3(u, sizeof(u));
	FUNC3(m, sizeof(m));
	FUNC3(f, sizeof(f));

	maxuid = maxgid = maxmode = maxflags = 0;
	for (; p; p = p->fts_link) {
		if (!dflag || (dflag && FUNC2(p->fts_statp->st_mode))) {
			smode = p->fts_statp->st_mode & MBITS;
			if (smode < MAXMODE && ++m[smode] > maxmode) {
				savemode = smode;
				maxmode = m[smode];
			}
			sgid = p->fts_statp->st_gid;
			if (sgid < MAXGID && ++g[sgid] > maxgid) {
				savegid = sgid;
				maxgid = g[sgid];
			}
			suid = p->fts_statp->st_uid;
			if (suid < MAXUID && ++u[suid] > maxuid) {
				saveuid = suid;
				maxuid = u[suid];
			}

			/*
			 * XXX
			 * note that the below will break when file flags
			 * are extended beyond the first 4 bytes of each
			 * half word of the flags
			 */
#define FLAGS2IDX(f) ((f & 0xf) | ((f >> 12) & 0xf0))
			sflags = p->fts_statp->st_flags;
			if (FLAGS2IDX(sflags) < MAXFLAGS &&
			    ++f[FLAGS2IDX(sflags)] > maxflags) {
				saveflags = sflags;
				maxflags = f[FLAGS2IDX(sflags)];
			}
		}
	}
	/*
	 * If the /set record is the same as the last one we do not need to output
	 * a new one.  So first we check to see if anything changed.  Note that we
	 * always output a /set record for the first directory.
	 */
	if ((((keys & F_UNAME) | (keys & F_UID)) && (*puid != saveuid)) ||
	    (((keys & F_GNAME) | (keys & F_GID)) && (*pgid != savegid)) ||
	    ((keys & F_MODE) && (*pmode != savemode)) ||
	    ((keys & F_FLAGS) && (*pflags != saveflags)) ||
	    (first)) {
		first = 0;
		if (dflag)
			(void)FUNC11("/set type=dir");
		else
			(void)FUNC11("/set type=file");
		if (keys & F_UNAME) {
			pw = FUNC10(saveuid);
			if (pw != NULL)
				(void)FUNC11(" uname=%s", pw->pw_name);
			else if (wflag)
				FUNC12( "Could not get uname for uid=%u", saveuid);
			else
				FUNC5(1, "Could not get uname for uid=%u", saveuid);
		}
		if (keys & F_UID)
			(void)FUNC11(" uid=%lu", (u_long)saveuid);
		if (keys & F_GNAME) {
			gr = FUNC9(savegid);
			if (gr != NULL)
				(void)FUNC11(" gname=%s", gr->gr_name);
			else if (wflag)
				FUNC12("Could not get gname for gid=%u", savegid);
			else
				FUNC5(1, "Could not get gname for gid=%u", savegid);
		}
		if (keys & F_GID)
			(void)FUNC11(" gid=%lu", (u_long)savegid);
		if (keys & F_MODE)
			(void)FUNC11(" mode=%#o", savemode);
		if (keys & F_NLINK)
			(void)FUNC11(" nlink=1");
		if (keys & F_FLAGS) {
			fflags = FUNC6(saveflags);
			(void)FUNC11(" flags=%s", fflags);
			FUNC7(fflags);
		}
		(void)FUNC11("\n");
		*puid = saveuid;
		*pgid = savegid;
		*pmode = savemode;
		*pflags = saveflags;
	}
	return (0);
}