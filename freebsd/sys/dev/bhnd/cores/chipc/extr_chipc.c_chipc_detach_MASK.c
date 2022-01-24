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
struct chipc_softc {int /*<<< orphan*/  core_region; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_SERVICE_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct chipc_softc*) ; 
 int RF_ACTIVE ; 
 int RF_ALLOCATED ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct chipc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct chipc_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct chipc_softc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct chipc_softc	*sc;
	int			 error;

	sc = FUNC6(dev);

	if ((error = FUNC2(dev)))
		return (error);

	if ((error = FUNC5(dev)))
		return (error);

	if ((error = FUNC1(dev, BHND_SERVICE_ANY)))
		return (error);

	FUNC4(sc, sc->core_region, RF_ALLOCATED|RF_ACTIVE);
	FUNC3(sc);

	FUNC0(sc);

	return (0);
}