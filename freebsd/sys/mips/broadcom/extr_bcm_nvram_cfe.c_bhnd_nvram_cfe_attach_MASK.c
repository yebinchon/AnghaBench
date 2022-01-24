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
struct bhnd_nvram_cfe_softc {int /*<<< orphan*/  store; int /*<<< orphan*/  dev; } ;
struct bcm_platform {int /*<<< orphan*/  services; int /*<<< orphan*/ * nvram_cls; int /*<<< orphan*/ * nvram_io; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_SERVICE_NVRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct bcm_platform* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bhnd_nvram_cfe_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct bcm_platform		*bp;
	struct bhnd_nvram_cfe_softc	*sc;
	int				 error;

	bp = FUNC1();
	FUNC0(bp->nvram_io != NULL, ("missing NVRAM I/O context"));
	FUNC0(bp->nvram_cls != NULL, ("missing NVRAM class"));

	sc = FUNC5(dev);
	sc->dev = dev;

	error = FUNC3(&sc->store, bp->nvram_io,
	    bp->nvram_cls);
	if (error)
		return (error);

	error = FUNC4(&bp->services, dev,
	    BHND_SERVICE_NVRAM, 0);
	if (error) {
		FUNC2(sc->store);
		return (error);
	}

	return (error);
}