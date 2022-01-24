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
typedef  int uint16_t ;
struct dc_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DC_ROM ; 
 int /*<<< orphan*/  DC_SIO ; 
 int DC_SIO_ROMCTL_READ ; 
 int DC_SIO_ROMSEL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct dc_softc *sc, int addr, uint16_t *dest)
{

	FUNC3(DC_SIO_ROMSEL | DC_SIO_ROMCTL_READ);

	addr *= 2;
	FUNC1(sc, DC_ROM, addr | 0x160);
	*dest = (uint16_t)FUNC0(sc, DC_SIO) & 0xff;
	addr += 1;
	FUNC1(sc, DC_ROM, addr | 0x160);
	*dest |= ((uint16_t)FUNC0(sc, DC_SIO) & 0xff) << 8;

	FUNC2(DC_SIO_ROMSEL | DC_SIO_ROMCTL_READ);
}