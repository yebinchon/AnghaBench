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
struct bxe_softc {int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 int FALSE ; 
 int IFF_DRV_RUNNING ; 
 int TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct bxe_softc *sc)
{

    if ((FUNC0(sc->ifp) & IFF_DRV_RUNNING) == 0)
        return FALSE;

    return TRUE;
}