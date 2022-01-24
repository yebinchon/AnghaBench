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
typedef  int /*<<< orphan*/  uint64_t ;
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

uint64_t
FUNC3(void *priv)
{
	struct stat sb;
	int fd;

	fd = *(int *)priv;
	if (FUNC1(fd, &sb) != 0)
		return (0);
	if (FUNC0(sb.st_mode) && FUNC2(fd, DIOCGMEDIASIZE, &sb.st_size) != 0)
		return (0);
	return (sb.st_size);
}