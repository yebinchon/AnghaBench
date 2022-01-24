#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fd_name; } ;

/* Variables and functions */
 TYPE_1__* fd_list ; 
 int fd_list_count ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(void)
{
	int i, error;

	error = FUNC1();
	if (error) {
		FUNC0("restoreprivilege");
		return (error);
	}

	for (i = 0; i < fd_list_count; i++) {
		error = FUNC2(fd_list[i].fd_name);
		if (error)
			return (error);
	}

	return (0);
}