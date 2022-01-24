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
struct thread {int dummy; } ;
struct fchownat_args {int flag; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  path; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int AT_BENEATH ; 
 int AT_SYMLINK_NOFOLLOW ; 
 int EINVAL ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC1(struct thread *td, struct fchownat_args *uap)
{

	if ((uap->flag & ~(AT_SYMLINK_NOFOLLOW | AT_BENEATH)) != 0)
		return (EINVAL);

	return (FUNC0(td, uap->fd, uap->path, UIO_USERSPACE, uap->uid,
	    uap->gid, uap->flag));
}