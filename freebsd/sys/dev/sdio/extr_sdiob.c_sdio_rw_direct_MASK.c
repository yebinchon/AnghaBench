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
typedef  int /*<<< orphan*/  uint32_t ;
struct sdiob_softc {int /*<<< orphan*/  periph; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sdiob_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sdiob_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint8_t fn, uint32_t addr, bool wr,
    uint8_t *val)
{
	struct sdiob_softc *sc;
	int error;

	sc = FUNC2(dev);
	FUNC0(sc->periph);
	error = FUNC3(sc, fn, addr, wr, val);
	FUNC1(sc->periph);
	return (error);
}