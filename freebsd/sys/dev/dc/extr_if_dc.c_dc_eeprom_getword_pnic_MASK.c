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
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct dc_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 int DC_PN_EEOPCODE_READ ; 
 int /*<<< orphan*/  DC_PN_SIOCTL ; 
 int DC_PN_SIOCTL_BUSY ; 
 int /*<<< orphan*/  DC_SIO ; 
 int DC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct dc_softc *sc, int addr, uint16_t *dest)
{
	int i;
	uint32_t r;

	FUNC1(sc, DC_PN_SIOCTL, DC_PN_EEOPCODE_READ | addr);

	for (i = 0; i < DC_TIMEOUT; i++) {
		FUNC2(1);
		r = FUNC0(sc, DC_SIO);
		if (!(r & DC_PN_SIOCTL_BUSY)) {
			*dest = (uint16_t)(r & 0xFFFF);
			return;
		}
	}
}