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
struct stat {int dummy; } ;
struct fhstat_args {int /*<<< orphan*/  sb; int /*<<< orphan*/  u_fhp; } ;
struct fhandle {int dummy; } ;
typedef  int /*<<< orphan*/  sb ;
typedef  int /*<<< orphan*/  fh ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct fhandle*,int) ; 
 int FUNC1 (struct stat*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct thread*,struct fhandle,struct stat*) ; 

int
FUNC3(struct thread *td, struct fhstat_args *uap)
{
	struct stat sb;
	struct fhandle fh;
	int error;

	error = FUNC0(uap->u_fhp, &fh, sizeof(fh));
	if (error != 0)
		return (error);
	error = FUNC2(td, fh, &sb);
	if (error == 0)
		error = FUNC1(&sb, uap->sb, sizeof(sb));
	return (error);
}