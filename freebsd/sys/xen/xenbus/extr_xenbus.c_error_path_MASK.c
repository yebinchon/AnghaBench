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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  M_XENBUS ; 
 char* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC4(device_t dev)
{
	char *path_buffer = FUNC0(FUNC2("error/")
	    + FUNC2(FUNC3(dev)) + 1,M_XENBUS, M_WAITOK);

	FUNC1(path_buffer, "error/");
	FUNC1(path_buffer + FUNC2("error/"), FUNC3(dev));

	return (path_buffer);
}