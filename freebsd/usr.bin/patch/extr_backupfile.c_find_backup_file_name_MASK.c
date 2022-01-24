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

/* Variables and functions */
 scalar_t__ backup_type ; 
 char const* FUNC0 (char*) ; 
 char* FUNC1 (char const*,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,int) ; 
 int FUNC5 (char*,char*) ; 
 scalar_t__ numbered_existing ; 
 scalar_t__ simple ; 
 char* simple_backup_suffix ; 
 char* FUNC6 (char const*) ; 

char *
FUNC7(const char *file)
{
	char	*dir, *base_versions, *tmp_file;
	int	highest_backup;

	if (backup_type == simple)
		return FUNC1(file, simple_backup_suffix);
	tmp_file = FUNC6(file);
	if (tmp_file == NULL)
		return NULL;
	base_versions = FUNC1(FUNC0(tmp_file), ".~");
	FUNC3(tmp_file);
	if (base_versions == NULL)
		return NULL;
	tmp_file = FUNC6(file);
	if (tmp_file == NULL) {
		FUNC3(base_versions);
		return NULL;
	}
	dir = FUNC2(tmp_file);
	if (dir == NULL) {
		FUNC3(base_versions);
		FUNC3(tmp_file);
		return NULL;
	}
	highest_backup = FUNC5(base_versions, dir);
	FUNC3(base_versions);
	FUNC3(tmp_file);
	if (backup_type == numbered_existing && highest_backup == 0)
		return FUNC1(file, simple_backup_suffix);
	return FUNC4(file, highest_backup + 1);
}