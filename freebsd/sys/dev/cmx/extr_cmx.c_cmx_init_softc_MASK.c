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
struct cmx_softc {int /*<<< orphan*/  timeout; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CCID_DRIVER_MINIMUM_TIMEOUT ; 
 struct cmx_softc* FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(device_t dev)
{
	struct cmx_softc *sc = FUNC0(dev);
	sc->dev = dev;
	sc->timeout = CCID_DRIVER_MINIMUM_TIMEOUT;
}