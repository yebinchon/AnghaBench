#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int sc_dev_opened; int /*<<< orphan*/  sc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_1__* autofs_softc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct cdev *dev, int flag, int fmt, struct thread *td)
{

	FUNC1(&autofs_softc->sc_lock);
	FUNC0(autofs_softc->sc_dev_opened, ("not opened?"));
	autofs_softc->sc_dev_opened = false;
	FUNC2(&autofs_softc->sc_lock);

	return (0);
}