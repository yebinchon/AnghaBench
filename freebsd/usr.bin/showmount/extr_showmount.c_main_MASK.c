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
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  int /*<<< orphan*/  strvised ;
struct grouplist {char* gr_name; struct grouplist* gr_next; } ;
struct exportslist {char* ex_dirp; struct exportslist* ex_next; struct grouplist* ex_groups; } ;

/* Variables and functions */
#define  ALL 129 
#define  DIRS 128 
 int DODUMP ; 
 int DOEXPORTS ; 
 int DOPARSABLEEXPORTS ; 
 int MNTPATHLEN ; 
 int /*<<< orphan*/  MOUNTPROC_DUMP ; 
 int /*<<< orphan*/  MOUNTPROC_EXPORT ; 
 int /*<<< orphan*/  MOUNTPROG ; 
 int VIS_GLOB ; 
 int VIS_NL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct exportslist* exportslist ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  mntdump ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (char*,int,char*,int,char*) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int type ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ xdr_exportslist ; 
 scalar_t__ xdr_mntdump ; 
 scalar_t__ xdr_void ; 

int
FUNC10(int argc, char **argv)
{
	char strvised[MNTPATHLEN * 4 + 1];
	register struct exportslist *exp;
	register struct grouplist *grp;
	register int rpcs = 0, mntvers = 3;
	const char *host;
	int ch, estat, nbytes;

	while ((ch = FUNC4(argc, argv, "adEe13")) != -1)
		switch (ch) {
		case 'a':
			if (type == 0) {
				type = ALL;
				rpcs |= DODUMP;
			} else
				FUNC9();
			break;
		case 'd':
			if (type == 0) {
				type = DIRS;
				rpcs |= DODUMP;
			} else
				FUNC9();
			break;
		case 'E':
			rpcs |= DOPARSABLEEXPORTS;
			break;
		case 'e':
			rpcs |= DOEXPORTS;
			break;
		case '1':
			mntvers = 1;
			break;
		case '3':
			mntvers = 3;
			break;
		case '?':
		default:
			FUNC9();
		}
	argc -= optind;
	argv += optind;

	if ((rpcs & DOPARSABLEEXPORTS) != 0) {
		if ((rpcs & DOEXPORTS) != 0)
			FUNC2(1, "-E cannot be used with -e");
		if ((rpcs & DODUMP) != 0)
			FUNC2(1, "-E cannot be used with -a or -d");
	}

	if (argc > 0)
		host = *argv;
	else
		host = "localhost";

	if (rpcs == 0)
		rpcs = DODUMP;

	if (rpcs & DODUMP)
		if ((estat = FUNC8(host, MOUNTPROG, mntvers,
			MOUNTPROC_DUMP, (xdrproc_t)xdr_void, (char *)0,
			(xdrproc_t)xdr_mntdump, (char *)&mntdump)) != 0) {
			FUNC0(estat);
			FUNC2(1, "can't do mountdump rpc");
		}
	if (rpcs & (DOEXPORTS | DOPARSABLEEXPORTS))
		if ((estat = FUNC8(host, MOUNTPROG, mntvers,
			MOUNTPROC_EXPORT, (xdrproc_t)xdr_void, (char *)0,
			(xdrproc_t)xdr_exportslist, (char *)&exportslist)) != 0) {
			FUNC0(estat);
			FUNC2(1, "can't do exports rpc");
		}

	/* Now just print out the results */
	if (rpcs & DODUMP) {
		switch (type) {
		case ALL:
			FUNC6("All mount points on %s:\n", host);
			break;
		case DIRS:
			FUNC6("Directories on %s:\n", host);
			break;
		default:
			FUNC6("Hosts on %s:\n", host);
			break;
		}
		FUNC5(mntdump);
	}
	if (rpcs & DOEXPORTS) {
		FUNC6("Exports list on %s:\n", host);
		exp = exportslist;
		while (exp) {
			FUNC6("%-34s ", exp->ex_dirp);
			grp = exp->ex_groups;
			if (grp == NULL) {
				FUNC6("Everyone\n");
			} else {
				while (grp) {
					FUNC6("%s ", grp->gr_name);
					grp = grp->gr_next;
				}
				FUNC6("\n");
			}
			exp = exp->ex_next;
		}
	}
	if (rpcs & DOPARSABLEEXPORTS) {
		exp = exportslist;
		while (exp) {
			nbytes = FUNC7(strvised, sizeof(strvised),
			    exp->ex_dirp, VIS_GLOB | VIS_NL, "\"'$");
			if (nbytes == -1)
				FUNC1(1, "strsnvis");
			FUNC6("%s\n", strvised);
			exp = exp->ex_next;
		}
	}
	FUNC3(0);
}