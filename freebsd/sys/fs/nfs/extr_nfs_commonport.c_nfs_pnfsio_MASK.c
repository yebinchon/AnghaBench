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
typedef  int /*<<< orphan*/  task_fn_t ;
struct taskqueue {int dummy; } ;
struct pnfsio {int inprog; int /*<<< orphan*/  tsk; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int mp_ncpus ; 
 int nfs_pnfsiothreads ; 
 struct taskqueue* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct taskqueue**) ; 
 int FUNC2 (struct taskqueue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct taskqueue*) ; 
 int FUNC4 (struct taskqueue**,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

int
FUNC5(task_fn_t *func, void *context)
{
	struct pnfsio *pio;
	int ret;
	static struct taskqueue *pnfsioq = NULL;

	pio = (struct pnfsio *)context;
	if (pnfsioq == NULL) {
		if (nfs_pnfsiothreads == 0)
			return (EPERM);
		if (nfs_pnfsiothreads < 0)
			nfs_pnfsiothreads = mp_ncpus * 4;
		pnfsioq = FUNC1("pnfsioq", M_WAITOK,
		    taskqueue_thread_enqueue, &pnfsioq);
		if (pnfsioq == NULL)
			return (ENOMEM);
		ret = FUNC4(&pnfsioq, nfs_pnfsiothreads,
		    0, "pnfsiot");
		if (ret != 0) {
			FUNC3(pnfsioq);
			pnfsioq = NULL;
			return (ret);
		}
	}
	pio->inprog = 1;
	FUNC0(&pio->tsk, 0, func, context);
	ret = FUNC2(pnfsioq, &pio->tsk);
	if (ret != 0)
		pio->inprog = 0;
	return (ret);
}