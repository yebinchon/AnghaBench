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
struct copy_file_range_args {int /*<<< orphan*/ * outoffp; int /*<<< orphan*/ * inoffp; int /*<<< orphan*/  flags; int /*<<< orphan*/  len; int /*<<< orphan*/  outfd; int /*<<< orphan*/  infd; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct thread *td, struct copy_file_range_args *uap)
{
	off_t inoff, outoff, *inoffp, *outoffp;
	int error;

	inoffp = outoffp = NULL;
	if (uap->inoffp != NULL) {
		error = FUNC0(uap->inoffp, &inoff, sizeof(off_t));
		if (error != 0)
			return (error);
		inoffp = &inoff;
	}
	if (uap->outoffp != NULL) {
		error = FUNC0(uap->outoffp, &outoff, sizeof(off_t));
		if (error != 0)
			return (error);
		outoffp = &outoff;
	}
	error = FUNC2(td, uap->infd, inoffp, uap->outfd,
	    outoffp, uap->len, uap->flags);
	if (error == 0 && uap->inoffp != NULL)
		error = FUNC1(inoffp, uap->inoffp, sizeof(off_t));
	if (error == 0 && uap->outoffp != NULL)
		error = FUNC1(outoffp, uap->outoffp, sizeof(off_t));
	return (error);
}