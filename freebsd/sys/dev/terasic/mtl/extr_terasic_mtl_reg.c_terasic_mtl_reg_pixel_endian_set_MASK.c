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
typedef  int /*<<< orphan*/  uint32_t ;
struct terasic_mtl_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TERASIC_MTL_BLEND_PIXEL_ENDIAN_SWAP ; 
 int /*<<< orphan*/  FUNC0 (struct terasic_mtl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct terasic_mtl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct terasic_mtl_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct terasic_mtl_softc*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct terasic_mtl_softc *sc, int endian_swap)
{
	uint32_t v;

	FUNC0(sc);
	FUNC2(sc, &v);
	if (endian_swap)
		v |= TERASIC_MTL_BLEND_PIXEL_ENDIAN_SWAP;
	else
		v &= ~TERASIC_MTL_BLEND_PIXEL_ENDIAN_SWAP;
	FUNC3(sc, v);
	FUNC1(sc);
}