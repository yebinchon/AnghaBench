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
typedef  scalar_t__ u_long ;
struct image_args {int dummy; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int /*<<< orphan*/  FUNC0 (struct image_args*,int) ; 
 int FUNC1 (struct image_args*) ; 
 int FUNC2 (struct image_args*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct image_args*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct image_args*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct image_args*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 

int
FUNC7(struct image_args *args, const char *fname,
    enum uio_seg segflg, char **argv, char **envv)
{
	u_long arg, env;
	int error;

	FUNC0(args, sizeof(*args));
	if (argv == NULL)
		return (EFAULT);

	/*
	 * Allocate demand-paged memory for the file name, argument, and
	 * environment strings.
	 */
	error = FUNC1(args);
	if (error != 0)
		return (error);

	/*
	 * Copy the file name.
	 */
	error = FUNC4(args, fname, segflg);
	if (error != 0)
		goto err_exit;

	/*
	 * extract arguments first
	 */
	for (;;) {
		error = FUNC6(argv++, &arg);
		if (error == -1) {
			error = EFAULT;
			goto err_exit;
		}
		if (arg == 0)
			break;
		error = FUNC2(args, (char *)(uintptr_t)arg,
		    UIO_USERSPACE);
		if (error != 0)
			goto err_exit;
	}

	/*
	 * extract environment strings
	 */
	if (envv) {
		for (;;) {
			error = FUNC6(envv++, &env);
			if (error == -1) {
				error = EFAULT;
				goto err_exit;
			}
			if (env == 0)
				break;
			error = FUNC3(args,
			    (char *)(uintptr_t)env, UIO_USERSPACE);
			if (error != 0)
				goto err_exit;
		}
	}

	return (0);

err_exit:
	FUNC5(args);
	return (error);
}