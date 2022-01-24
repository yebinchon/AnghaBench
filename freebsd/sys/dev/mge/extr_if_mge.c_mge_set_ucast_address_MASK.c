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
struct mge_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MGE_UCAST_REG_NUMBER ; 
 int /*<<< orphan*/  FUNC1 (struct mge_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct mge_softc *sc, uint8_t last_byte, uint8_t queue)
{
	uint32_t reg_idx, reg_off, reg_val, i;

	last_byte &= 0xf;
	reg_idx = last_byte / MGE_UCAST_REG_NUMBER;
	reg_off = (last_byte % MGE_UCAST_REG_NUMBER) * 8;
	reg_val = (1 | (queue << 1)) << reg_off;

	for (i = 0; i < MGE_UCAST_REG_NUMBER; i++) {
		if ( i == reg_idx)
			FUNC1(sc, FUNC0(i), reg_val);
		else
			FUNC1(sc, FUNC0(i), 0);
	}
}