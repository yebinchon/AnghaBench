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
struct thread {int dummy; } ;
struct ciss_softc {int /*<<< orphan*/  ciss_mtx; int /*<<< orphan*/  ciss_flags; } ;
struct cdev {scalar_t__ si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  CISS_FLAG_CONTROL_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct cdev *dev, int flags, int fmt, struct thread *p)
{
    struct ciss_softc	*sc;

    FUNC0(1);

    sc = (struct ciss_softc *)dev->si_drv1;

    /* we might want to veto if someone already has us open */

    FUNC1(&sc->ciss_mtx);
    sc->ciss_flags |= CISS_FLAG_CONTROL_OPEN;
    FUNC2(&sc->ciss_mtx);
    return(0);
}