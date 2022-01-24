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
typedef  int /*<<< orphan*/  u_int ;
struct mc146818_softc {int /*<<< orphan*/  (* sc_mcread ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MC_CENT ; 
 struct mc146818_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC2(device_t dev)
{
	struct mc146818_softc *sc;

	sc = FUNC0(dev);
	return ((*sc->sc_mcread)(dev, MC_CENT));
}