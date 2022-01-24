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
struct stat {scalar_t__ st_mtime; } ;

/* Variables and functions */
 int FUNC0 (char*,char const*) ; 
 scalar_t__ expire ; 
 scalar_t__ FUNC1 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ show_only ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC4(const char *fullpath)
{
	struct stat st;
	if (FUNC1(fullpath, &st))
		return FUNC0("Could not stat '%s'", fullpath);
	if (st.st_mtime > expire)
		return 0;
	if (show_only || verbose)
		FUNC2("Removing stale temporary file %s\n", fullpath);
	if (!show_only)
		FUNC3(fullpath);
	return 0;
}