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
struct pipe {int dummy; } ;
struct pipepair {struct pipe pp_wpipe; struct pipe pp_rpipe; } ;
struct filecaps {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTYPE_PIPE ; 
 int FNONBLOCK ; 
 int FREAD ; 
 int FWRITE ; 
 int O_NONBLOCK ; 
 int FUNC0 (struct thread*,struct file**,int*,int,struct filecaps*) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,struct file*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int,int /*<<< orphan*/ ,struct pipe*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,struct pipepair**) ; 
 int /*<<< orphan*/  FUNC5 (struct pipe*) ; 
 int /*<<< orphan*/  pipeops ; 

int
FUNC6(struct thread *td, int fildes[2], int flags, struct filecaps *fcaps1,
    struct filecaps *fcaps2)
{
	struct file *rf, *wf;
	struct pipe *rpipe, *wpipe;
	struct pipepair *pp;
	int fd, fflags, error;

	FUNC4(td, &pp);
	rpipe = &pp->pp_rpipe;
	wpipe = &pp->pp_wpipe;
	error = FUNC0(td, &rf, &fd, flags, fcaps1);
	if (error) {
		FUNC5(rpipe);
		FUNC5(wpipe);
		return (error);
	}
	/* An extra reference on `rf' has been held for us by falloc_caps(). */
	fildes[0] = fd;

	fflags = FREAD | FWRITE;
	if ((flags & O_NONBLOCK) != 0)
		fflags |= FNONBLOCK;

	/*
	 * Warning: once we've gotten past allocation of the fd for the
	 * read-side, we can only drop the read side via fdrop() in order
	 * to avoid races against processes which manage to dup() the read
	 * side while we are blocked trying to allocate the write side.
	 */
	FUNC3(rf, fflags, DTYPE_PIPE, rpipe, &pipeops);
	error = FUNC0(td, &wf, &fd, flags, fcaps2);
	if (error) {
		FUNC1(td, rf, fildes[0]);
		FUNC2(rf, td);
		/* rpipe has been closed by fdrop(). */
		FUNC5(wpipe);
		return (error);
	}
	/* An extra reference on `wf' has been held for us by falloc_caps(). */
	FUNC3(wf, fflags, DTYPE_PIPE, wpipe, &pipeops);
	FUNC2(wf, td);
	fildes[1] = fd;
	FUNC2(rf, td);

	return (0);
}