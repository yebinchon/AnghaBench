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
struct lpt_data {int sc_state; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct lpt_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int HAVEBUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, int how)
{
	device_t ppbus = FUNC1(dev);
	struct lpt_data *sc = FUNC0(dev);
	int error;

	/*
	 * We might already have the bus for a write(2) after an interrupted
	 * write(2) call.
	 */
	FUNC2(ppbus);
	if (sc->sc_state & HAVEBUS)
		return (0);

	error = FUNC3(ppbus, dev, how);
	if (error == 0)
		sc->sc_state |= HAVEBUS;
	return (error);
}