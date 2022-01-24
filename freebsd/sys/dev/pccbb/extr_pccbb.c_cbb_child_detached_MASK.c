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
struct cbb_softc {scalar_t__ cbdev; TYPE_1__* exca; } ;
typedef  scalar_t__ device_t ;
struct TYPE_2__ {scalar_t__ pccarddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct cbb_softc* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int /*<<< orphan*/ ) ; 

void
FUNC3(device_t brdev, device_t child)
{
	struct cbb_softc *sc = FUNC1(brdev);

	/* I'm not sure we even need this */
	if (child != sc->cbdev && child != sc->exca[0].pccarddev)
		FUNC2(brdev, "Unknown child detached: %s\n",
		    FUNC0(child));
}