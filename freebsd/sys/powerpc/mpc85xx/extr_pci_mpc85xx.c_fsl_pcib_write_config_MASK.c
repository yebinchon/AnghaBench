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
typedef  scalar_t__ u_int ;
struct fsl_pcib_softc {scalar_t__ sc_busnr; int /*<<< orphan*/  sc_pcie; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct fsl_pcib_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_pcib_softc*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, uint32_t val, int bytes)
{
	struct fsl_pcib_softc *sc = FUNC0(dev);

	if (bus == sc->sc_busnr && !sc->sc_pcie && slot < 10)
		return;
	FUNC1(sc, bus, slot, func, reg, val, bytes);
}