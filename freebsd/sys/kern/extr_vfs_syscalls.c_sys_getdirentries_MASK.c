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
struct getdirentries_args {int /*<<< orphan*/ * basep; int /*<<< orphan*/  count; int /*<<< orphan*/  buf; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC2(struct thread *td, struct getdirentries_args *uap)
{
	off_t base;
	int error;

	error = FUNC1(td, uap->fd, uap->buf, uap->count, &base,
	    NULL, UIO_USERSPACE);
	if (error != 0)
		return (error);
	if (uap->basep != NULL)
		error = FUNC0(&base, uap->basep, sizeof(off_t));
	return (error);
}