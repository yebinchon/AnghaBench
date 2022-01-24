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
struct dc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_SIO ; 
 int DC_SIO_EESEL ; 
 int /*<<< orphan*/  DC_SIO_EE_CLK ; 
 int /*<<< orphan*/  DC_SIO_EE_CS ; 
 int /*<<< orphan*/  DC_SIO_ROMCTL_READ ; 
 int /*<<< orphan*/  FUNC3 (struct dc_softc*) ; 

__attribute__((used)) static void
FUNC4(struct dc_softc *sc)
{
	int i;

	FUNC0(sc, DC_SIO, DC_SIO_EESEL);
	FUNC3(sc);
	FUNC2(sc, DC_SIO, DC_SIO_ROMCTL_READ);
	FUNC3(sc);
	FUNC1(sc, DC_SIO, DC_SIO_EE_CLK);
	FUNC3(sc);
	FUNC2(sc, DC_SIO, DC_SIO_EE_CS);
	FUNC3(sc);

	for (i = 0; i < 25; i++) {
		FUNC1(sc, DC_SIO, DC_SIO_EE_CLK);
		FUNC3(sc);
		FUNC2(sc, DC_SIO, DC_SIO_EE_CLK);
		FUNC3(sc);
	}

	FUNC1(sc, DC_SIO, DC_SIO_EE_CLK);
	FUNC3(sc);
	FUNC1(sc, DC_SIO, DC_SIO_EE_CS);
	FUNC3(sc);
	FUNC0(sc, DC_SIO, 0x00000000);
}