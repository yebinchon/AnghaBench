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
struct cdev {int dummy; } ;
struct amr_softc {int /*<<< orphan*/  amr_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMR_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct amr_softc* FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int flags, int fmt, struct thread *td)
{
    int			unit = FUNC1(dev);
    struct amr_softc	*sc = FUNC3(FUNC2("amr"), unit);

    FUNC0(1);

    sc->amr_state &= ~AMR_STATE_OPEN;
    return (0);
}