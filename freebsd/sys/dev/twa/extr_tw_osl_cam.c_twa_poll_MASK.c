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
struct twa_softc {int /*<<< orphan*/  ctlr_handle; } ;
struct cam_sim {int dummy; } ;
typedef  int /*<<< orphan*/  TW_VOID ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,struct twa_softc*,char*,struct twa_softc*) ; 

TW_VOID
FUNC3(struct cam_sim *sim)
{
	struct twa_softc *sc = (struct twa_softc *)(FUNC0(sim));

	FUNC2(3, sc, "entering; sc = %p", sc);
	FUNC1(&(sc->ctlr_handle));
	FUNC2(3, sc, "exiting; sc = %p", sc);
}