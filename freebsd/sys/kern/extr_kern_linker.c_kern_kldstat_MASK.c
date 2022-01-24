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
struct thread {scalar_t__* td_retval; int /*<<< orphan*/  td_ucred; } ;
struct kld_file_stat {int /*<<< orphan*/ * pathname; int /*<<< orphan*/  size; int /*<<< orphan*/  address; int /*<<< orphan*/  id; int /*<<< orphan*/  refs; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__* linker_file_t ;
struct TYPE_3__ {int /*<<< orphan*/  pathname; int /*<<< orphan*/  size; int /*<<< orphan*/  address; int /*<<< orphan*/  id; int /*<<< orphan*/  refs; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  kld_sx ; 
 TYPE_1__* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct thread *td, int fileid, struct kld_file_stat *stat)
{
	linker_file_t lf;
	int namelen;
#ifdef MAC
	int error;

	error = mac_kld_check_stat(td->td_ucred);
	if (error)
		return (error);
#endif

	FUNC4(&kld_sx);
	lf = FUNC1(fileid);
	if (lf == NULL) {
		FUNC5(&kld_sx);
		return (ENOENT);
	}

	/* Version 1 fields: */
	namelen = FUNC3(lf->filename) + 1;
	if (namelen > sizeof(stat->name))
		namelen = sizeof(stat->name);
	FUNC0(lf->filename, &stat->name[0], namelen);
	stat->refs = lf->refs;
	stat->id = lf->id;
	stat->address = lf->address;
	stat->size = lf->size;
	/* Version 2 fields: */
	namelen = FUNC3(lf->pathname) + 1;
	if (namelen > sizeof(stat->pathname))
		namelen = sizeof(stat->pathname);
	FUNC0(lf->pathname, &stat->pathname[0], namelen);
	FUNC5(&kld_sx);

	td->td_retval[0] = 0;
	return (0);
}