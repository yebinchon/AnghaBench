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
struct TYPE_4__ {scalar_t__ nifs; int /*<<< orphan*/  if_id; } ;
typedef  TYPE_1__* POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC2(POCE_SOFTC sc)
{
	/* currently only single interface is implmeneted */
	if (sc->nifs > 0) {
		FUNC1(sc, sc->if_id);
		FUNC0(&sc->nifs);
	}
}