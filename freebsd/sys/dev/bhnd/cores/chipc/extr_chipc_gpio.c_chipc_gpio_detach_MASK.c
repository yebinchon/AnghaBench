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
struct chipc_gpio_softc {int /*<<< orphan*/  mem_res; int /*<<< orphan*/  mem_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_SERVICE_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct chipc_gpio_softc*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct chipc_gpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct chipc_gpio_softc	*sc;
	int			 error;

	sc = FUNC4(dev);

	if ((error = FUNC3(dev)))
		return (error);

	if ((error = FUNC1(dev, BHND_SERVICE_ANY)))
		return (error);

	FUNC2(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem_res);
	FUNC0(sc);

	return (0);
}