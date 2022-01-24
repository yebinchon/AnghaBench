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
typedef  enum backup_type { ____Placeholder_backup_type } backup_type ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  backup_args ; 
 int* backup_types ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int numbered_existing ; 

enum backup_type
FUNC3(const char *version)
{
	int	i;

	if (version == NULL || *version == '\0')
		return numbered_existing;
	i = FUNC0(version, backup_args);
	if (i >= 0)
		return backup_types[i];
	FUNC2("version control type", version, i);
	FUNC1(2);
}