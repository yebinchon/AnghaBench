#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_2__* td_proc; } ;
struct priv_fw {int /*<<< orphan*/ * file; } ;
typedef  int /*<<< orphan*/ * linker_file_t ;
struct TYPE_4__ {TYPE_1__* p_fd; } ;
struct TYPE_3__ {int /*<<< orphan*/ * fd_rdir; } ;

/* Variables and functions */
 struct thread* curthread ; 
 int /*<<< orphan*/  firmware_mtx ; 
 int FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct priv_fw* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(void *arg, int npending)
{
	struct thread *td = curthread;
	char *imagename = arg;
	struct priv_fw *fp;
	linker_file_t result;
	int error;

	/* synchronize with the thread that dispatched us */
	FUNC3(&firmware_mtx);
	FUNC4(&firmware_mtx);

	if (td->td_proc->p_fd->fd_rdir == NULL) {
		FUNC5("%s: root not mounted yet, no way to load image\n",
		    imagename);
		goto done;
	}
	error = FUNC0(imagename, NULL, &result);
	if (error != 0) {
		FUNC5("%s: could not load firmware image, error %d\n",
		    imagename, error);
		goto done;
	}

	FUNC3(&firmware_mtx);
	fp = FUNC2(imagename, NULL);
	if (fp == NULL || fp->file != NULL) {
		FUNC4(&firmware_mtx);
		if (fp == NULL)
			FUNC5("%s: firmware image loaded, "
			    "but did not register\n", imagename);
		(void) FUNC1(imagename, NULL, NULL);
		goto done;
	}
	fp->file = result;	/* record the module identity */
	FUNC4(&firmware_mtx);
done:
	FUNC6(imagename);		/* we're done */
}