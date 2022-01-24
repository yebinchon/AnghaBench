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
struct wpi_softc {int /*<<< orphan*/  calib_to; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void (*) (void*),struct wpi_softc*) ; 
 int hz ; 
 scalar_t__ FUNC1 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpi_softc*) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct wpi_softc *sc = arg;

	if (FUNC1(sc) == 0)
		return;

	FUNC2(sc);

	FUNC0(&sc->calib_to, 60*hz, wpi_calib_timeout, sc);
}