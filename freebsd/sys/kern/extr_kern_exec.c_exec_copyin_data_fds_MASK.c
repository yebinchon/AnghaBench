#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_1__* td_proc; } ;
struct image_args {char* begin_argv; char* buf; size_t stringspace; char* endp; int /*<<< orphan*/  fdp; int /*<<< orphan*/  argc; } ;
struct filedesc {int fd_lastfile; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 size_t ARG_MAX ; 
 int E2BIG ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (int const*,...) ; 
 int FUNC1 (struct image_args*) ; 
 int /*<<< orphan*/  FUNC2 (struct image_args*) ; 
 int FUNC3 (struct filedesc*,int*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC5 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct image_args*,char,int) ; 

int
FUNC7(struct thread *td, struct image_args *args,
    const void *data, size_t datalen, const int *fds, size_t fdslen)
{
	struct filedesc *ofdp;
	const char *p;
	int *kfds;
	int error;

	FUNC6(args, '\0', sizeof(*args));
	ofdp = td->td_proc->p_fd;
	if (datalen >= ARG_MAX || fdslen > ofdp->fd_lastfile + 1)
		return (E2BIG);
	error = FUNC1(args);
	if (error != 0)
		return (error);

	args->begin_argv = args->buf;
	args->stringspace = ARG_MAX;

	if (datalen > 0) {
		/*
		 * Argument buffer has been provided. Copy it into the
		 * kernel as a single string and add a terminating null
		 * byte.
		 */
		error = FUNC0(data, args->begin_argv, datalen);
		if (error != 0)
			goto err_exit;
		args->begin_argv[datalen] = '\0';
		args->endp = args->begin_argv + datalen + 1;
		args->stringspace -= datalen + 1;

		/*
		 * Traditional argument counting. Count the number of
		 * null bytes.
		 */
		for (p = args->begin_argv; p < args->endp; ++p)
			if (*p == '\0')
				++args->argc;
	} else {
		/* No argument buffer provided. */
		args->endp = args->begin_argv;
	}

	/* Create new file descriptor table. */
	kfds = FUNC5(fdslen * sizeof(int), M_TEMP, M_WAITOK);
	error = FUNC0(fds, kfds, fdslen * sizeof(int));
	if (error != 0) {
		FUNC4(kfds, M_TEMP);
		goto err_exit;
	}
	error = FUNC3(ofdp, kfds, fdslen, &args->fdp);
	FUNC4(kfds, M_TEMP);
	if (error != 0)
		goto err_exit;

	return (0);
err_exit:
	FUNC2(args);
	return (error);
}