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
struct est_softc {int /*<<< orphan*/  freq_list; scalar_t__ msr_settings; scalar_t__ acpi_settings; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct est_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct est_softc *sc;
	int error;

	error = FUNC0(dev);
	if (error)
		return (error);

	sc = FUNC1(dev);
	if (sc->acpi_settings || sc->msr_settings)
		FUNC2(sc->freq_list, M_DEVBUF);
	return (0);
}