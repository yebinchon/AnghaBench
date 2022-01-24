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
struct terasic_mtl_softc {int /*<<< orphan*/  mtl_reg_res; int /*<<< orphan*/  mtl_reg_rid; int /*<<< orphan*/  mtl_pixel_res; int /*<<< orphan*/  mtl_pixel_rid; int /*<<< orphan*/  mtl_text_res; int /*<<< orphan*/  mtl_text_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct terasic_mtl_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct terasic_mtl_softc*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct terasic_mtl_softc *sc;

	sc = FUNC1(dev);
	FUNC2(sc);
	FUNC0(dev, SYS_RES_MEMORY, sc->mtl_text_rid,
	    sc->mtl_text_res);
	FUNC0(dev, SYS_RES_MEMORY, sc->mtl_pixel_rid,
	    sc->mtl_pixel_res);
	FUNC0(dev, SYS_RES_MEMORY, sc->mtl_reg_rid,
	    sc->mtl_reg_res);
	return (0);
}