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
struct bhnd_pcie2_softc {int /*<<< orphan*/  mem_res; int /*<<< orphan*/  mem_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_pcie2_softc*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct bhnd_pcie2_softc* FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(device_t dev)
{
	struct bhnd_pcie2_softc	*sc;
	int			 error;

	sc = FUNC3(dev);

	if ((error = FUNC2(dev)))
		return (error);

	FUNC1(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem_res);
	
	FUNC0(sc);

	return (0);
}