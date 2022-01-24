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
struct uart_opal_softc {int /*<<< orphan*/  node; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct uart_opal_softc*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct uart_opal_softc sc;
	int err;

	sc.node = FUNC1(dev);
	err = FUNC2(&sc);
	if (err != 0)
		return (err);

	FUNC0(dev, "OPAL Serial Port");

	return (err);
}