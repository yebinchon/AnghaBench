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
typedef  scalar_t__ time_t ;
struct mtablist {char* mtab_host; scalar_t__ mtab_time; char* mtab_dirp; struct mtablist* mtab_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MOUNTTAB ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int,char**,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 struct mtablist* mtabhead ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,...) ; 
 int FUNC14 (int) ; 

int
FUNC15(int argc, char **argv) {
	int ch, keep, success, pathlen;
	time_t expire, now;
	char *host, *path;
	struct mtablist *mtab;

	expire = 0;
	host = path = NULL;
	success = keep = verbose = 0;
	while ((ch = FUNC7(argc, argv, "h:kp:ve:")) != -1)
		switch (ch) {
		case 'h':
			host = optarg;
			break;
		case 'e':
			expire = FUNC0(optarg);
			break;
		case 'k':
			keep = 1;
			break;
		case 'p':
			path = optarg;
			break;
		case 'v':
			verbose = 1;
			break;
		case '?':
			FUNC12();
		default:
			break;
		}
	argc -= optind;
	argv += optind;

	/* Default expiretime is one day */
	if (expire == 0)
		expire = 86400;
	FUNC11(&now);

	/* Read PATH_MOUNTTAB. */
	if (!FUNC9()) {
		if (verbose)
			FUNC13("no mounttab entries (%s does not exist)",
			    PATH_MOUNTTAB);
		mtabhead = NULL;
	}

	if (host == NULL && path == NULL) {
		/* Check each entry and do any necessary unmount RPCs. */
		for (mtab = mtabhead; mtab != NULL; mtab = mtab->mtab_next) {
			if (*mtab->mtab_host == '\0')
				continue;
			if (mtab->mtab_time + expire < now) {
				/* Clear expired entry. */
				if (verbose)
					FUNC13("remove expired entry %s:%s",
					    mtab->mtab_host, mtab->mtab_dirp);
				FUNC1(mtab->mtab_host,
				    sizeof(mtab->mtab_host));
				continue;
			}
			if (keep && FUNC8(mtab->mtab_host,
			    mtab->mtab_dirp)) {
				if (verbose)
					FUNC13("skip entry %s:%s",
					    mtab->mtab_host, mtab->mtab_dirp);
				continue;
			}
			if (FUNC4(mtab->mtab_host, mtab->mtab_dirp)) {
				if (verbose)
					FUNC13("umount RPC for %s:%s succeeded",
					    mtab->mtab_host, mtab->mtab_dirp);
				/* Remove all entries for this host + path. */
				FUNC2(mtab->mtab_host, mtab->mtab_dirp,
				    verbose);
			}
		}
		success = 1;
	} else {
		if (host == NULL && path != NULL)
			/* Missing hostname. */
			FUNC12();
		if (path == NULL) {
			/* Do a RPC UMNTALL for this specific host */
			success = FUNC3(host);
			if (verbose && success)
				FUNC13("umntall RPC for %s succeeded", host);
		} else {
			/* Do a RPC UMNTALL for this specific mount */
			for (pathlen = FUNC10(path);
			    pathlen > 1 && path[pathlen - 1] == '/'; pathlen--)
				path[pathlen - 1] = '\0';
			success = FUNC4(host, path);
			if (verbose && success)
				FUNC13("umount RPC for %s:%s succeeded", host,
				    path);
		}
		/* If successful, remove any corresponding mounttab entries. */
		if (success)
			FUNC2(host, path, verbose);
	}
	/* Write and unlink PATH_MOUNTTAB if necessary */
	if (success)
		success = FUNC14(verbose);
	FUNC6();
	FUNC5 (success ? 0 : 1);
}