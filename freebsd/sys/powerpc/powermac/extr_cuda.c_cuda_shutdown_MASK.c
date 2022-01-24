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
typedef  int /*<<< orphan*/  uint8_t ;
struct cuda_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_POWEROFF ; 
 int /*<<< orphan*/  CMD_RESET ; 
 int /*<<< orphan*/  CUDA_PSEUDO ; 
 int RB_HALT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cuda_softc*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void *xsc, int howto)
{
	struct cuda_softc *sc = xsc;
	uint8_t cmd[] = {CUDA_PSEUDO, 0};

	cmd[1] = (howto & RB_HALT) ? CMD_POWEROFF : CMD_RESET;
	FUNC0(sc->sc_dev);
	FUNC1(sc, 1, 2, cmd);

	while (1)
		FUNC0(sc->sc_dev);
}