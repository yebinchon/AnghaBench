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
struct terasic_mtl_softc {int /*<<< orphan*/  mtl_reg_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  TERASIC_MTL_OFF_TEXTCURSOR ; 
 int TERASIC_MTL_TEXTCURSOR_COL_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 

void
FUNC2(struct terasic_mtl_softc *sc, uint8_t col,
    uint8_t row)
{
	uint32_t v;

	v = (col << TERASIC_MTL_TEXTCURSOR_COL_SHIFT) | row;
	v = FUNC1(v);
	FUNC0(sc->mtl_reg_res, TERASIC_MTL_OFF_TEXTCURSOR, v);
}