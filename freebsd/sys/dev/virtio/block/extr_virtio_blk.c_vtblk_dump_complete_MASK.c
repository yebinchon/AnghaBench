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
struct vtblk_softc {int /*<<< orphan*/  vtblk_dump_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtblk_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vtblk_softc*) ; 

__attribute__((used)) static void
FUNC4(struct vtblk_softc *sc)
{

	FUNC3(sc);

	FUNC1(sc);
	FUNC2(sc, &sc->vtblk_dump_queue);
	FUNC0(sc);
}