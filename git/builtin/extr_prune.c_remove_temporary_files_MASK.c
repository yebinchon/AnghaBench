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
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC7(const char *path)
{
	DIR *dir;
	struct dirent *de;

	dir = FUNC3(path);
	if (!dir) {
		FUNC1(stderr, "Unable to open directory %s\n", path);
		return;
	}
	while ((de = FUNC5(dir)) != NULL)
		if (FUNC6(de->d_name, "tmp_"))
			FUNC4(FUNC2("%s/%s", path, de->d_name));
	FUNC0(dir);
}