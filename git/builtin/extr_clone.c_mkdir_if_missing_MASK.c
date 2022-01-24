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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,struct stat*) ; 

__attribute__((used)) static void FUNC6(const char *pathname, mode_t mode)
{
	struct stat st;

	if (!FUNC4(pathname, mode))
		return;

	if (errno != EEXIST)
		FUNC3(FUNC1("failed to create directory '%s'"), pathname);
	else if (FUNC5(pathname, &st))
		FUNC3(FUNC1("failed to stat '%s'"), pathname);
	else if (!FUNC0(st.st_mode))
		FUNC2(FUNC1("%s exists and is not a directory"), pathname);
}