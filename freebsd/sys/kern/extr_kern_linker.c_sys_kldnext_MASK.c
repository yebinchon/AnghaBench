#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct thread {int /*<<< orphan*/ * td_retval; int /*<<< orphan*/  td_ucred; } ;
struct kldnext_args {scalar_t__ fileid; } ;
typedef  TYPE_1__* linker_file_t ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOENT ; 
 int LINKER_FILE_LINKED ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kld_sx ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  linker_files ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct thread *td, struct kldnext_args *uap)
{
	linker_file_t lf;
	int error = 0;

#ifdef MAC
	error = mac_kld_check_stat(td->td_ucred);
	if (error)
		return (error);
#endif

	FUNC4(&kld_sx);
	if (uap->fileid == 0)
		lf = FUNC0(&linker_files);
	else {
		lf = FUNC2(uap->fileid);
		if (lf == NULL) {
			error = ENOENT;
			goto out;
		}
		lf = FUNC1(lf, link);
	}

	/* Skip partially loaded files. */
	while (lf != NULL && !(lf->flags & LINKER_FILE_LINKED))
		lf = FUNC1(lf, link);

	if (lf)
		td->td_retval[0] = lf->id;
	else
		td->td_retval[0] = 0;
out:
	FUNC5(&kld_sx);
	return (error);
}