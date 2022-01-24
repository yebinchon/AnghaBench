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
#define  SCLD_EXISTS 129 
#define  SCLD_OK 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(char *path)
{
	switch (FUNC2(path)) {
		case SCLD_OK:
		case SCLD_EXISTS:
			return 0;
		default:
			return FUNC1(FUNC0("could not create leading directories "
				       "of '%s'"), path);
	}
}