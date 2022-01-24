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
struct vtmmio_softc {int /*<<< orphan*/ ** res; int /*<<< orphan*/  dev; int /*<<< orphan*/ * ih; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct vtmmio_softc *sc)
{

	if (sc->ih != NULL)
		FUNC1(sc->dev, sc->res[1], sc->ih);

	if (sc->res[1] != NULL)
		FUNC0(sc->dev, SYS_RES_IRQ, 0, sc->res[1]);
}