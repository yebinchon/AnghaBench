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
struct bcm_bmips_softc {int /*<<< orphan*/  cfg; int /*<<< orphan*/  cfg_rid; int /*<<< orphan*/  mem; int /*<<< orphan*/  mem_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm_bmips_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct bcm_bmips_softc	*sc;
	int			 error;

	sc = FUNC2(dev);

	if ((error = FUNC0(dev)))
		return (error);

	FUNC1(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem);
	FUNC1(dev, SYS_RES_MEMORY, sc->cfg_rid, sc->cfg);

	return (0);
}