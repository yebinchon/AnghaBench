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
struct at45d_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct at45d_softc*) ; 
 int /*<<< orphan*/  at45d_delayed_attach ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct at45d_softc*) ; 
 struct at45d_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct at45d_softc *sc;

	sc = FUNC2(dev);
	sc->dev = dev;
	FUNC0(sc);

	FUNC1(at45d_delayed_attach, sc);
	return (0);
}