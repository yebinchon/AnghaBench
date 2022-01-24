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
struct mkuz_conveyor {int /*<<< orphan*/ * wthreads; void* results; void* wrk_queue; } ;
struct mkuz_cfg {int nworkers; } ;
struct cw_args {struct mkuz_conveyor* cvp; struct mkuz_cfg* cfp; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  cworker ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

struct mkuz_conveyor *
FUNC4(struct mkuz_cfg *cfp)
{
    struct mkuz_conveyor *cp;
    struct cw_args *cwp;
    int i, r;

    cp = FUNC2(sizeof(struct mkuz_conveyor) +
      (sizeof(pthread_t) * cfp->nworkers));

    cp->wrk_queue = FUNC1(1);
    cp->results = FUNC1(1);

    for (i = 0; i < cfp->nworkers; i++) {
        cwp = FUNC2(sizeof(struct cw_args));
        cwp->cfp = cfp;
        cwp->cvp = cp;
        r = FUNC3(&cp->wthreads[i], NULL, cworker, (void *)cwp);
        if (r != 0) {
            FUNC0(1, "mkuz_conveyor_ctor: pthread_create() failed");
            /* Not reached */
        }
    }
    return (cp);
}