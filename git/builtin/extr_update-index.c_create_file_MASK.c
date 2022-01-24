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
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (char const*) ; 
 int FUNC3 (char const*,int,int) ; 

__attribute__((used)) static int FUNC4(const char *path)
{
	int fd;
	path = FUNC2(path);
	fd = FUNC3(path, O_CREAT | O_RDWR, 0644);
	if (fd < 0)
		FUNC1(FUNC0("failed to create file %s"), path);
	return fd;
}