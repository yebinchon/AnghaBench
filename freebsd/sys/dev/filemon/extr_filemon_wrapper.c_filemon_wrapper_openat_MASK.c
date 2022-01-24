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
struct openat_args {int /*<<< orphan*/  fd; int /*<<< orphan*/  flag; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct thread*,struct openat_args*) ; 

__attribute__((used)) static int
FUNC2(struct thread *td, struct openat_args *uap)
{
	int ret;

	if ((ret = FUNC1(td, uap)) == 0)
		FUNC0(td, uap->path, uap->flag, uap->fd);

	return (ret);
}