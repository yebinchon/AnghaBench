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
struct opal_nvram_softc {int /*<<< orphan*/ * sc_buf; int /*<<< orphan*/ * sc_cdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  NVRAM_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct opal_nvram_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct opal_nvram_softc *sc;

	sc = FUNC2(dev);

	if (sc->sc_cdev != NULL)
		FUNC1(sc->sc_cdev);
	if (sc->sc_buf != NULL)
		FUNC0(sc->sc_buf, NVRAM_BUFSIZE, M_DEVBUF);
	
	return (0);
}