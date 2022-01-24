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
struct uart_softc {struct mtx* sc_hwmtx; } ;
struct mtx {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  SCC_IVAR_HWMTX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct uart_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	device_t parent;
	struct uart_softc *sc;
	uintptr_t mtx;

	parent = FUNC1(dev);
	sc = FUNC2(dev);

	if (FUNC0(parent, dev, SCC_IVAR_HWMTX, &mtx))
		return (ENXIO);
	sc->sc_hwmtx = (struct mtx *)(void *)mtx;
	return (FUNC3(dev));
}