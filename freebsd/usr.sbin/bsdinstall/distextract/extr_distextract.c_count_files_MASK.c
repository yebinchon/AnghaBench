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
struct archive_entry {int dummy; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  errormsg ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 scalar_t__ EINVAL ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * archive ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,struct archive_entry**) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* distdir ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC8 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char const*,...) ; 
 size_t FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*,char const*,size_t) ; 
 scalar_t__ FUNC14 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC15(const char *file)
{
	static FILE *manifest = NULL;
	char *p;
	int file_count;
	int retval;
	size_t span;
	struct archive_entry *entry;
	char line[512];
	char path[PATH_MAX];
	char errormsg[PATH_MAX + 512];

	if (manifest == NULL) {
		FUNC11(path, sizeof(path), "%s/MANIFEST", distdir);
		manifest = FUNC9(path, "r");
	}

	if (manifest != NULL) {
		FUNC10(manifest);
		while (FUNC8(line, sizeof(line), manifest) != NULL) {
			p = &line[0];
			span = FUNC12(p, "\t") ;
			if (span < 1 || FUNC13(p, file, span) != 0)
				continue;

			/*
			 * We're at the right manifest line. The file count is
			 * in the third element
			 */
			span = FUNC12(p += span + (*p != '\0' ? 1 : 0), "\t");
			span = FUNC12(p += span + (*p != '\0' ? 1 : 0), "\t");
			if (span > 0) {
				file_count = (int)FUNC14(p, (char **)NULL, 10);
				if (file_count == 0 && errno == EINVAL)
					continue;
				return (file_count);
			}
		}
	}

	/*
	 * Either no manifest, or manifest didn't mention this archive.
	 * Use archive(3) to read the archive, counting files within.
	 */
	if ((archive = FUNC2()) == NULL) {
		FUNC11(errormsg, sizeof(errormsg),
		    "Error: %s\n", FUNC0(NULL));
		FUNC7("Extract Error", errormsg, 0, 0, TRUE);
		return (-1);
	}
	FUNC6(archive);
	FUNC5(archive);
	FUNC11(path, sizeof(path), "%s/%s", distdir, file);
	retval = FUNC4(archive, path, 4096);
	if (retval != ARCHIVE_OK) {
		FUNC11(errormsg, sizeof(errormsg),
		    "Error while extracting %s: %s\n", file,
		    FUNC0(archive));
		FUNC7("Extract Error", errormsg, 0, 0, TRUE);
		archive = NULL;
		return (-1);
	}

	file_count = 0;
	while (FUNC3(archive, &entry) == ARCHIVE_OK)
		file_count++;
	FUNC1(archive);
	archive = NULL;

	return (file_count);
}