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
struct image_args {size_t stringspace; int /*<<< orphan*/ * endp; int /*<<< orphan*/ * begin_argv; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * fname; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 size_t ARG_MAX ; 
 int E2BIG ; 
 int ENAMETOOLONG ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int UIO_SYSSPACE ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 size_t exec_map_entry_size ; 

int
FUNC3(struct image_args *args, const char *fname,
    enum uio_seg segflg)
{
	int error;
	size_t length;

	FUNC0(args->fname == NULL, ("fname already appended"));
	FUNC0(args->endp == NULL, ("already appending to args"));

	if (fname != NULL) {
		args->fname = args->buf;
		error = segflg == UIO_SYSSPACE ?
		    FUNC2(fname, args->fname, PATH_MAX, &length) :
		    FUNC1(fname, args->fname, PATH_MAX, &length);
		if (error != 0)
			return (error == ENAMETOOLONG ? E2BIG : error);
	} else
		length = 0;

	/* Set up for _arg_*()/_env_*() */
	args->endp = args->buf + length;
	/* begin_argv must be set and kept updated */
	args->begin_argv = args->endp;
	FUNC0(exec_map_entry_size - length >= ARG_MAX,
	    ("too little space remaining for arguments %zu < %zu",
	    exec_map_entry_size - length, (size_t)ARG_MAX));
	args->stringspace = ARG_MAX;

	return (0);
}