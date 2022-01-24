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
struct sfxge_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcdi_timeout ; 
 int /*<<< orphan*/  FUNC4 (struct sfxge_softc*) ; 

__attribute__((used)) static void
FUNC5(struct sfxge_softc *sc)
{
	device_t dev = sc->dev;

	FUNC3(LOG_WARNING, "[%s%d] MC_TIMEOUT", FUNC1(dev),
		FUNC2(dev));

	FUNC0(mcdi_timeout);
	FUNC4(sc);
}