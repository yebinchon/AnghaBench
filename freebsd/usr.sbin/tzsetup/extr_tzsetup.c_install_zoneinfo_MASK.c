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
typedef  int /*<<< orphan*/  path_zoneinfo_file ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DITEM_FAILURE ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  path_db ; 
 char* path_zoneinfo ; 
 scalar_t__ reallydoit ; 
 scalar_t__ FUNC5 (char*,int,char*,char*,char const*) ; 

__attribute__((used)) static int
FUNC6(const char *zoneinfo)
{
	int		rv;
	FILE		*f;
	char		path_zoneinfo_file[MAXPATHLEN];

	if ((size_t)FUNC5(path_zoneinfo_file, sizeof(path_zoneinfo_file),
	    "%s/%s", path_zoneinfo, zoneinfo) >= sizeof(path_zoneinfo_file))
		FUNC0(1, "%s/%s name too long", path_zoneinfo, zoneinfo);
	rv = FUNC4(path_zoneinfo_file);

	/* Save knowledge for later */
	if (reallydoit && (rv & DITEM_FAILURE) == 0) {
		if ((f = FUNC2(path_db, "w")) != NULL) {
			FUNC3(f, "%s\n", zoneinfo);
			FUNC1(f);
		}
	}

	return (rv);
}