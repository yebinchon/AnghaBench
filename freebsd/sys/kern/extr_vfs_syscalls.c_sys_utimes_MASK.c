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
struct utimes_args {int /*<<< orphan*/  tptr; int /*<<< orphan*/  path; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(struct thread *td, struct utimes_args *uap)
{

	return (FUNC0(td, AT_FDCWD, uap->path, UIO_USERSPACE,
	    uap->tptr, UIO_USERSPACE));
}