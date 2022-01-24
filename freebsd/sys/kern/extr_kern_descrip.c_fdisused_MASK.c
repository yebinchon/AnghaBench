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
struct filedesc {int fd_nfiles; int* fd_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int) ; 
 size_t FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct filedesc *fdp, int fd)
{

	FUNC0(fd >= 0 && fd < fdp->fd_nfiles,
	    ("file descriptor %d out of range (0, %d)", fd, fdp->fd_nfiles));

	return ((fdp->fd_map[FUNC2(fd)] & FUNC1(fd)) != 0);
}