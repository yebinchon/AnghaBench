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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 

__attribute__((used)) static void
FUNC5(struct archive *a, struct archive_entry *e, const char *path)
{
	int mode;

	mode = FUNC1(e) & 0777;
	if (mode == 0)
		mode = 0755;

	/*
	 * Some zipfiles contain directories with weird permissions such
	 * as 0644 or 0444.  This can cause strange issues such as being
	 * unable to extract files into the directory we just created, or
	 * the user being unable to remove the directory later without
	 * first manually changing its permissions.  Therefore, we whack
	 * the permissions into shape, assuming that the user wants full
	 * access and that anyone who gets read access also gets execute
	 * access.
	 */
	mode |= 0700;
	if (mode & 0040)
		mode |= 0010;
	if (mode & 0004)
		mode |= 0001;

	FUNC3("   creating: %s/\n", path);
	FUNC4(path, mode);
	FUNC0(FUNC2(a));
}