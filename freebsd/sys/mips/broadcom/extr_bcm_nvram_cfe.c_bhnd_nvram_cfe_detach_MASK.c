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
struct bhnd_nvram_cfe_softc {int /*<<< orphan*/  store; } ;
struct bcm_platform {int /*<<< orphan*/  services; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_SERVICE_ANY ; 
 struct bcm_platform* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bhnd_nvram_cfe_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct bcm_platform		*bp;
	struct bhnd_nvram_cfe_softc	*sc;
	int				 error;

	bp = FUNC0();
	sc = FUNC3(dev);

	error = FUNC2(&bp->services, dev,
	    BHND_SERVICE_ANY);
	if (error)
		return (error);

	FUNC1(sc->store);

	return (0);
}