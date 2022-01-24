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
struct dirent {size_t d_namlen; int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (char const*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC5(const char *file, const char *dir)
{
	DIR	*dirp;
	struct dirent	*dp;
	int	highest_version, this_version;
	size_t	file_name_length;

	dirp = FUNC1(dir);
	if (dirp == NULL)
		return 0;

	highest_version = 0;
	file_name_length = FUNC3(file);

	while ((dp = FUNC2(dirp)) != NULL) {
		if (dp->d_namlen <= file_name_length)
			continue;

		this_version = FUNC4(file, dp->d_name, file_name_length);
		if (this_version > highest_version)
			highest_version = this_version;
	}
	FUNC0(dirp);
	return highest_version;
}