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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int u_int ;
struct agp_i810_softc {int /*<<< orphan*/ * sc_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct agp_i810_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t
FUNC2(device_t dev, u_int index)
{
	struct agp_i810_softc *sc;
	u_int32_t pte;

	sc = FUNC1(dev);
	pte = FUNC0(sc->sc_res[0], index * 4 + (512 * 1024));
	return (pte);
}