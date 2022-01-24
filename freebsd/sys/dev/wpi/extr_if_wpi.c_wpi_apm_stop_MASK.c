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
struct wpi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WPI_GP_CNTRL ; 
 int /*<<< orphan*/  WPI_GP_CNTRL_INIT_DONE ; 
 int /*<<< orphan*/  WPI_RESET ; 
 int /*<<< orphan*/  WPI_RESET_SW ; 
 int /*<<< orphan*/  FUNC2 (struct wpi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpi_softc*) ; 

__attribute__((used)) static void
FUNC4(struct wpi_softc *sc)
{
	FUNC3(sc);

	/* Reset the entire device. */
	FUNC2(sc, WPI_RESET, WPI_RESET_SW);
	FUNC0(10);
	/* Clear "initialization complete" bit. */
	FUNC1(sc, WPI_GP_CNTRL, WPI_GP_CNTRL_INIT_DONE);
}