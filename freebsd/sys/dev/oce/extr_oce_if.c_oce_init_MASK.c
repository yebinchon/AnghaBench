#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dev_lock; TYPE_1__* ifp; } ;
struct TYPE_5__ {int if_flags; } ;
typedef  TYPE_2__* POCE_SOFTC ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	POCE_SOFTC sc = arg;
	
	FUNC0(&sc->dev_lock);

	if (sc->ifp->if_flags & IFF_UP) {
		FUNC3(sc);
		FUNC2(sc);
	}
	
	FUNC1(&sc->dev_lock);

}