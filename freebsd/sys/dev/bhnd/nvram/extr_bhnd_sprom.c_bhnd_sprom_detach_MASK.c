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
struct bhnd_sprom_softc {int /*<<< orphan*/  store; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_SERVICE_ANY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct bhnd_sprom_softc* FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(device_t dev)
{
	struct bhnd_sprom_softc	*sc;
	int			 error;
	
	sc = FUNC2(dev);

	if ((error = FUNC0(dev, BHND_SERVICE_ANY)))
		return (error);

	FUNC1(sc->store);

	return (0);
}