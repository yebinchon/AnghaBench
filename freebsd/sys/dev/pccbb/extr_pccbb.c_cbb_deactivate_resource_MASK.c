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
struct resource {int dummy; } ;
struct cbb_softc {int flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CBB_16BIT_CARD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct cbb_softc* FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(device_t brdev, device_t child, int type,
    int rid, struct resource *r)
{
	struct cbb_softc *sc = FUNC2(brdev);

	if (sc->flags & CBB_16BIT_CARD)
		return (FUNC1(brdev, child, type,
		    rid, r));
	else
		return (FUNC0(brdev, child, type,
		    rid, r));
}