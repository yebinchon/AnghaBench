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
typedef  int /*<<< orphan*/  yp_mapname ;
typedef  int /*<<< orphan*/  yp_mapdir ;
struct ypmaplist {int /*<<< orphan*/ * map; struct ypmaplist* next; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {char const* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct ypmaplist*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 struct dirent* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char const*) ; 
 scalar_t__ FUNC7 (char*,struct stat*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 char* yp_dir ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct ypmaplist*) ; 

__attribute__((used)) static struct ypmaplist *
FUNC13(const char *domain)
{
	char yp_mapdir[MAXPATHLEN + 2];
	char yp_mapname[MAXPATHLEN + 2];
	struct ypmaplist *cur = NULL;
	struct ypmaplist *yp_maplist = NULL;
	DIR *dird;
	struct dirent *dirp;
	struct stat statbuf;

	FUNC6(yp_mapdir, sizeof(yp_mapdir), "%s/%s", yp_dir, domain);

	if ((dird = FUNC4(yp_mapdir)) == NULL) {
		FUNC11("opendir(%s) failed: %s", yp_mapdir, FUNC10(errno));
		return(NULL);
	}

	while ((dirp = FUNC5(dird)) != NULL) {
		if (FUNC8(dirp->d_name, ".") && FUNC8(dirp->d_name, "..")) {
			FUNC6(yp_mapname, sizeof(yp_mapname), "%s/%s",
							yp_mapdir,dirp->d_name);
			if (FUNC7(yp_mapname, &statbuf) < 0 ||
						!FUNC0(statbuf.st_mode))
				continue;
			if ((cur = (struct ypmaplist *)
				FUNC3(sizeof(struct ypmaplist))) == NULL) {
				FUNC11("malloc() failed");
				FUNC1(dird);
				FUNC12(yp_maplist);
				return(NULL);
			}
			if ((cur->map = FUNC9(dirp->d_name)) == NULL) {
				FUNC11("strdup() failed: %s",FUNC10(errno));
				FUNC1(dird);
				FUNC12(yp_maplist);
				FUNC2(cur);
				return(NULL);
			}
			cur->next = yp_maplist;
			yp_maplist = cur;
			if (debug)
				FUNC11("map: %s", yp_maplist->map);
		}

	}
	FUNC1(dird);
	return(yp_maplist);
}