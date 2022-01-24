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
struct thread {int /*<<< orphan*/  td_ucred; } ;
typedef  TYPE_1__* linker_file_t ;
struct TYPE_3__ {int id; int /*<<< orphan*/  userrefs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRIV_KLD_LOAD ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  kld_sx ; 
 int FUNC3 (char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct thread *td, const char *file, int *fileid)
{
	const char *kldname, *modname;
	linker_file_t lf;
	int error;

	if ((error = FUNC5(td->td_ucred, 0)) != 0)
		return (error);

	if ((error = FUNC4(td, PRIV_KLD_LOAD)) != 0)
		return (error);

	/*
	 * It is possible that kldloaded module will attach a new ifnet,
	 * so vnet context must be set when this ocurs.
	 */
	FUNC1(FUNC2(td));

	/*
	 * If file does not contain a qualified name or any dot in it
	 * (kldname.ko, or kldname.ver.ko) treat it as an interface
	 * name.
	 */
	if (FUNC6(file, '/') || FUNC6(file, '.')) {
		kldname = file;
		modname = NULL;
	} else {
		kldname = NULL;
		modname = file;
	}

	FUNC7(&kld_sx);
	error = FUNC3(kldname, modname, NULL, NULL, &lf);
	if (error) {
		FUNC8(&kld_sx);
		goto done;
	}
	lf->userrefs++;
	if (fileid != NULL)
		*fileid = lf->id;
	FUNC8(&kld_sx);

done:
	FUNC0();
	return (error);
}