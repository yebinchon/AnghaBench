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
struct stat {scalar_t__ st_size; } ;
struct TYPE_2__ {scalar_t__ bootcode; } ;

/* Variables and functions */
 int EFBIG ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/ * bootcode ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,struct stat*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* scheme ; 

int
FUNC5(int fd)
{
	struct stat sb;

	if (scheme == NULL || scheme->bootcode == 0)
		return (ENXIO);

	if (FUNC1(fd, &sb) == -1)
		return (errno);
	if (sb.st_size > scheme->bootcode)
		return (EFBIG);

	bootcode = FUNC2(scheme->bootcode);
	if (bootcode == NULL)
		return (ENOMEM);
	FUNC3(bootcode, 0, scheme->bootcode);
	if (FUNC4(fd, bootcode, sb.st_size) != sb.st_size) {
		FUNC0(bootcode);
		bootcode = NULL;
		return (errno);
	}
	return (0);
}