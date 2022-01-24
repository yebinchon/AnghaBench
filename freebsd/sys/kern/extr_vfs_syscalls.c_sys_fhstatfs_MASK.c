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
struct statfs {int dummy; } ;
struct fhstatfs_args {int /*<<< orphan*/  buf; int /*<<< orphan*/  u_fhp; } ;
typedef  int /*<<< orphan*/  fhandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_STATFS ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct statfs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct statfs*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,struct statfs*) ; 
 struct statfs* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct thread *td, struct fhstatfs_args *uap)
{
	struct statfs *sfp;
	fhandle_t fh;
	int error;

	error = FUNC0(uap->u_fhp, &fh, sizeof(fhandle_t));
	if (error != 0)
		return (error);
	sfp = FUNC4(sizeof(struct statfs), M_STATFS, M_WAITOK);
	error = FUNC3(td, fh, sfp);
	if (error == 0)
		error = FUNC1(sfp, uap->buf, sizeof(*sfp));
	FUNC2(sfp, M_STATFS);
	return (error);
}