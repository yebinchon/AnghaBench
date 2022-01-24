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
typedef  int /*<<< orphan*/  tmpstr ;
struct vtscsi_softc {int /*<<< orphan*/  vtscsi_debug; int /*<<< orphan*/  vtscsi_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC3(struct vtscsi_softc *sc)
{
	char tmpstr[64];

	FUNC0("hw.vtscsi.debug_level", &sc->vtscsi_debug);

	FUNC2(tmpstr, sizeof(tmpstr), "dev.vtscsi.%d.debug_level",
	    FUNC1(sc->vtscsi_dev));
	FUNC0(tmpstr, &sc->vtscsi_debug);
}