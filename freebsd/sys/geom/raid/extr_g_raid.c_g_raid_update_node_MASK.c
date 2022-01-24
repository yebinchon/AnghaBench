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
typedef  scalar_t__ u_int ;
struct g_raid_softc {scalar_t__ sc_md; int /*<<< orphan*/  sc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct g_raid_softc*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ G_RAID_NODE_E_WAKE ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct g_raid_softc *sc, u_int event)
{
	FUNC3(&sc->sc_lock, SX_XLOCKED);

	FUNC0(2, sc, "Event %s for the array.",
	    FUNC2(event));

	if (event == G_RAID_NODE_E_WAKE)
		return (0);
	if (sc->sc_md)
		FUNC1(sc->sc_md, NULL, event);
	return (0);
}