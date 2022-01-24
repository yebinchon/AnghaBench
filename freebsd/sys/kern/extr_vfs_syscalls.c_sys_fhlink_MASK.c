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
struct fhlink_args {int /*<<< orphan*/  fhp; int /*<<< orphan*/  to; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(struct thread *td, struct fhlink_args *uap)
{

	return (FUNC0(td, AT_FDCWD, uap->to, UIO_USERSPACE, uap->fhp));
}