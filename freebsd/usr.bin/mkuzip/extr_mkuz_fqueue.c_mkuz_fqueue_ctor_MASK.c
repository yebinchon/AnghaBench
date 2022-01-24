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
struct mkuz_fifo_queue {int wakeup_len; int /*<<< orphan*/  cvar; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct mkuz_fifo_queue* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct mkuz_fifo_queue *
FUNC4(int wakeup_len)
{
    struct mkuz_fifo_queue *fqp;

    fqp = FUNC1(sizeof(struct mkuz_fifo_queue));
    fqp->wakeup_len = wakeup_len;
    if (FUNC3(&fqp->mtx, NULL) != 0) {
        FUNC0(1, "pthread_mutex_init() failed");
    }
    if (FUNC2(&fqp->cvar, NULL) != 0) {
        FUNC0(1, "pthread_cond_init() failed");
    }
    return (fqp);
}