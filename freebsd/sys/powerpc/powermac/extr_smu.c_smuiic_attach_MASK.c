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
struct smuiic_softc {int /*<<< orphan*/  sc_busno; scalar_t__ sc_iic_inuse; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct smuiic_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct smuiic_softc *sc = FUNC3(dev);
	FUNC4(&sc->sc_mtx, "smuiic", NULL, MTX_DEF);
	sc->sc_iic_inuse = 0;

	/* Get our bus number */
	FUNC0(FUNC5(dev), "reg", &sc->sc_busno,
	    sizeof(sc->sc_busno));

	/* Add the IIC bus layer */
	FUNC2(dev, "iicbus", -1);

	return (FUNC1(dev));
}