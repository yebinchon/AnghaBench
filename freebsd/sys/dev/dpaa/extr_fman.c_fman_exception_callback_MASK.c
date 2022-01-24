#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  struct fman_softc* t_Handle ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct fman_softc {TYPE_1__ sc_base; } ;
typedef  int /*<<< orphan*/  e_FmExceptions ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC1(t_Handle app_handle, e_FmExceptions exception)
{
	struct fman_softc *sc;

	sc = app_handle;
	FUNC0(sc->sc_base.dev, "FMan exception occurred.\n");
}