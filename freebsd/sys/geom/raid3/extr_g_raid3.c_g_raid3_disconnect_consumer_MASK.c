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
struct g_raid3_softc {int dummy; } ;
struct g_consumer {int /*<<< orphan*/ * provider; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC1 (struct g_raid3_softc*,struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(struct g_raid3_softc *sc, struct g_consumer *cp)
{

	FUNC2();

	if (cp == NULL)
		return;
	if (cp->provider != NULL)
		FUNC1(sc, cp);
	else
		FUNC0(cp);
}