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
struct filedesc {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cap_event_rights ; 
 int FUNC0 (struct filedesc*,int,int /*<<< orphan*/ *,struct file**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline int
FUNC1(struct filedesc *fdp, int fd, struct file **fpp)
{

	return (FUNC0(fdp, fd, &cap_event_rights, fpp, NULL));
}