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
struct g_eli_softc {int dummy; } ;
struct g_consumer {TYPE_1__* geom; } ;
struct TYPE_2__ {struct g_eli_softc* softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct g_eli_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2(struct g_consumer *cp)
{
	struct g_eli_softc *sc;

	FUNC1();
	sc = cp->geom->softc;
	if (sc == NULL)
		return;
	FUNC0(sc, TRUE);
}