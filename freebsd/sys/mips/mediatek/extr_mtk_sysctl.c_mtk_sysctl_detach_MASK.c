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
struct mtk_sysctl_softc {scalar_t__ mem_res; int /*<<< orphan*/  mem_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_sysctl_softc*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct mtk_sysctl_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct mtk_sysctl_softc *sc = FUNC2(dev);

	if (sc->mem_res)
		FUNC1(dev, SYS_RES_MEMORY, sc->mem_rid,
		    sc->mem_res);

	FUNC0(sc);

	return(0);
}