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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct terasic_mtl_softc {int dummy; } ;

/* Variables and functions */
 int TERASIC_MTL_BLEND_TEXTFG_MASK ; 
 int TERASIC_MTL_BLEND_TEXTFG_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct terasic_mtl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct terasic_mtl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct terasic_mtl_softc*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct terasic_mtl_softc*,int) ; 

void
FUNC4(struct terasic_mtl_softc *sc, uint8_t alpha)
{
	uint32_t v;

	FUNC0(sc);
	FUNC2(sc, &v);
	v &= ~TERASIC_MTL_BLEND_TEXTFG_MASK;
	v |= alpha << TERASIC_MTL_BLEND_TEXTFG_SHIFT;
	FUNC3(sc, v);
	FUNC1(sc);
}