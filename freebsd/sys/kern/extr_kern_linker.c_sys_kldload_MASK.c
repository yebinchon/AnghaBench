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
struct thread {int* td_retval; } ;
struct kldload_args {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct thread*,char*,int*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct thread *td, struct kldload_args *uap)
{
	char *pathname = NULL;
	int error, fileid;

	td->td_retval[0] = -1;

	pathname = FUNC3(MAXPATHLEN, M_TEMP, M_WAITOK);
	error = FUNC0(uap->file, pathname, MAXPATHLEN, NULL);
	if (error == 0) {
		error = FUNC2(td, pathname, &fileid);
		if (error == 0)
			td->td_retval[0] = fileid;
	}
	FUNC1(pathname, M_TEMP);
	return (error);
}