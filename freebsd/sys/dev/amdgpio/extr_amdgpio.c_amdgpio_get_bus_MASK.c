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
struct amdgpio_softc {int /*<<< orphan*/  sc_busdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct amdgpio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static device_t
FUNC2(device_t dev)
{
	struct amdgpio_softc *sc;

	sc = FUNC0(dev);

	FUNC1("busdev %p\n", sc->sc_busdev);
	return (sc->sc_busdev);
}