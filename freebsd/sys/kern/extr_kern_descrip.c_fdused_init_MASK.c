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
struct filedesc {int /*<<< orphan*/ * fd_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct filedesc*,int) ; 

__attribute__((used)) static void
FUNC4(struct filedesc *fdp, int fd)
{

	FUNC0(!FUNC3(fdp, fd), ("fd=%d is already used", fd));

	fdp->fd_map[FUNC2(fd)] |= FUNC1(fd);
}