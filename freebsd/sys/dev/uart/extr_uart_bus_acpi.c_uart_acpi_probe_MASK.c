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
struct uart_softc {int /*<<< orphan*/  sc_class; } ;
struct acpi_uart_compat_data {int /*<<< orphan*/  cd_quirks; int /*<<< orphan*/  cd_rclk; int /*<<< orphan*/  cd_regiowidth; int /*<<< orphan*/  cd_regshft; int /*<<< orphan*/ * cd_desc; int /*<<< orphan*/  cd_class; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 struct uart_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct acpi_uart_compat_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct uart_softc *sc;
	struct acpi_uart_compat_data *cd;

	sc = FUNC0(dev);

	if ((cd = FUNC2(dev)) != NULL) {
		sc->sc_class = cd->cd_class;
		if (cd->cd_desc != NULL)
			FUNC1(dev, cd->cd_desc);
		return (FUNC3(dev, cd->cd_regshft, cd->cd_regiowidth,
		    cd->cd_rclk, 0, 0, cd->cd_quirks));
	}
	return (ENXIO);
}