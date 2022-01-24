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
struct lpt_data {int /*<<< orphan*/  sc_statbuf; int /*<<< orphan*/  sc_inbuf; int /*<<< orphan*/ * sc_intr_resource; int /*<<< orphan*/  sc_intr_cookie; int /*<<< orphan*/  sc_timer; int /*<<< orphan*/  sc_cdev_bypass; int /*<<< orphan*/  sc_cdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct lpt_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct lpt_data *sc = FUNC0(dev);
	device_t ppbus = FUNC5(dev);

	FUNC4(sc->sc_cdev);
	FUNC4(sc->sc_cdev_bypass);
	FUNC8(ppbus);
	FUNC7(dev);
	FUNC9(ppbus);
	FUNC3(&sc->sc_timer);
	if (sc->sc_intr_resource != NULL) {
		FUNC2(dev, sc->sc_intr_resource,
		    sc->sc_intr_cookie);
		FUNC1(dev, SYS_RES_IRQ, 0, sc->sc_intr_resource);
	}
	FUNC6(sc->sc_inbuf, M_DEVBUF);
	FUNC6(sc->sc_statbuf, M_DEVBUF);

	return (0);
}