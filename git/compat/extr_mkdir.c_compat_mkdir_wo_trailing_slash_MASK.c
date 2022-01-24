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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*) ; 
 size_t FUNC3 (char const*) ; 

int FUNC4(const char *dir, mode_t mode)
{
	int retval;
	char *tmp_dir = NULL;
	size_t len = FUNC3(dir);

	if (len && dir[len-1] == '/') {
		if ((tmp_dir = FUNC2(dir)) == NULL)
			return -1;
		tmp_dir[len-1] = '\0';
	}
	else
		tmp_dir = (char *)dir;

	retval = FUNC1(tmp_dir, mode);
	if (tmp_dir != dir)
		FUNC0(tmp_dir);

	return retval;
}