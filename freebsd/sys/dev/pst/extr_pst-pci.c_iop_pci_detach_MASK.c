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
struct iop_softc {int /*<<< orphan*/  mtx; int /*<<< orphan*/  r_mem; int /*<<< orphan*/  r_irq; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iop_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
    struct iop_softc *sc = FUNC4(dev);
    int error;

    error = FUNC1(dev);
    if (error)
	    return (error);
    FUNC3(dev, sc->r_irq, sc->handle);
    FUNC2(dev, SYS_RES_IRQ, 0x00, sc->r_irq);
    FUNC2(dev, SYS_RES_MEMORY, FUNC0(0), sc->r_mem);
    FUNC5(&sc->mtx);
    return (0);
}