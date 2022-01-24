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
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_EXTRACT_ACL ; 
 int ARCHIVE_EXTRACT_FFLAGS ; 
 int ARCHIVE_EXTRACT_OWNER ; 
 int ARCHIVE_EXTRACT_PERM ; 
 int ARCHIVE_EXTRACT_TIME ; 
 int ARCHIVE_EXTRACT_XATTR ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 int FUNC2 (struct archive*,struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 struct archive* FUNC4 () ; 
 int FUNC5 (struct archive*,struct archive_entry**) ; 
 int FUNC6 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC12 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(int fd, char *p, int sz)
{
	struct archive *a;
	struct archive_entry *ae;
	char *end;
	int ret, r;

	ret = -1;
	a = FUNC4();
	if (a == NULL) {
		FUNC13("archive_read_new");
		return (ret);
	}
	FUNC7(a);
	FUNC8(a);

	if (FUNC9(fd, 0, 0) == -1) {
		FUNC13("lseek");
		goto cleanup;
	}

	if (FUNC6(a, fd, 4096) != ARCHIVE_OK) {
		FUNC14("archive_read_open_fd: %s", FUNC1(a));
		goto cleanup;
	}

	ae = NULL;
	while ((r = FUNC5(a, &ae)) == ARCHIVE_OK) {
		end = FUNC12(FUNC0(ae), '/');
		if (end == NULL)
			continue;

		if (FUNC10(end, "/pkg-static") == 0) {
			r = FUNC2(a, ae,
			    ARCHIVE_EXTRACT_OWNER | ARCHIVE_EXTRACT_PERM |
			    ARCHIVE_EXTRACT_TIME | ARCHIVE_EXTRACT_ACL |
			    ARCHIVE_EXTRACT_FFLAGS | ARCHIVE_EXTRACT_XATTR);
			FUNC11(p, FUNC0(ae), sz);
			break;
		}
	}

	if (r == ARCHIVE_OK)
		ret = 0;
	else
		FUNC14("failed to extract pkg-static: %s",
		    FUNC1(a));

cleanup:
	FUNC3(a);
	return (ret);

}