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
 int PATH_MAX ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7(void)
{
	char directory_path[PATH_MAX];
	int error;

	FUNC5(directory_path, "/tmp/unix_bind.XXXXXXX", PATH_MAX);
	if (FUNC3(directory_path) == NULL)
		FUNC2(-1, "mkdtemp");
	FUNC4(directory_path);

	error = FUNC0(directory_path);

	if (error == 0)
		error = FUNC1(directory_path);

	FUNC6();
	return (error);
}