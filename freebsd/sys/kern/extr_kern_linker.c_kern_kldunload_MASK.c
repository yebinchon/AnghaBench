#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct thread {int /*<<< orphan*/  td_ucred; } ;
typedef  TYPE_1__* linker_file_t ;
struct TYPE_4__ {scalar_t__ userrefs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int ENOENT ; 
 int /*<<< orphan*/  FILE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PRIV_KLD_UNLOAD ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  kld_sx ; 
 int FUNC4 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int
FUNC11(struct thread *td, int fileid, int flags)
{
	linker_file_t lf;
	int error = 0;

	if ((error = FUNC8(td->td_ucred, 0)) != 0)
		return (error);

	if ((error = FUNC7(td, PRIV_KLD_UNLOAD)) != 0)
		return (error);

	FUNC1(FUNC3(td));
	FUNC9(&kld_sx);
	lf = FUNC5(fileid);
	if (lf) {
		FUNC2(FILE, ("kldunload: lf->userrefs=%d\n", lf->userrefs));

		if (lf->userrefs == 0) {
			/*
			 * XXX: maybe LINKER_UNLOAD_FORCE should override ?
			 */
			FUNC6("kldunload: attempt to unload file that was"
			    " loaded by the kernel\n");
			error = EBUSY;
		} else {
			lf->userrefs--;
			error = FUNC4(lf, flags);
			if (error)
				lf->userrefs++;
		}
	} else
		error = ENOENT;
	FUNC10(&kld_sx);

	FUNC0();
	return (error);
}