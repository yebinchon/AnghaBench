#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int* td_retval; int /*<<< orphan*/  td_ucred; } ;
struct kldfind_args {int /*<<< orphan*/  file; } ;
typedef  TYPE_1__* linker_file_t ;
struct TYPE_3__ {int id; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kld_sx ; 
 char* FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct thread *td, struct kldfind_args *uap)
{
	char *pathname;
	const char *filename;
	linker_file_t lf;
	int error;

#ifdef MAC
	error = mac_kld_check_stat(td->td_ucred);
	if (error)
		return (error);
#endif

	td->td_retval[0] = -1;

	pathname = FUNC5(MAXPATHLEN, M_TEMP, M_WAITOK);
	if ((error = FUNC0(uap->file, pathname, MAXPATHLEN, NULL)) != 0)
		goto out;

	filename = FUNC2(pathname);
	FUNC6(&kld_sx);
	lf = FUNC3(filename);
	if (lf)
		td->td_retval[0] = lf->id;
	else
		error = ENOENT;
	FUNC7(&kld_sx);
out:
	FUNC1(pathname, M_TEMP);
	return (error);
}