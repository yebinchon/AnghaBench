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
 int O_APPEND ; 
 int O_CREAT ; 
 int O_RDWR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  filebase ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

__attribute__((used)) static void *
FUNC4(void *a)
{
	int *fd = (int *)a;

	while (TRUE) {
		(void) FUNC0 (*fd);
		*fd = FUNC1(filebase, O_APPEND | O_RDWR | O_CREAT, 0644);
		if (*fd < 0)
			FUNC2("refreshing file");
		(void) FUNC3(*fd, "test\n", 5);
	}

	return (NULL);
}