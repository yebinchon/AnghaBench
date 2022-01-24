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
struct pvscsi_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PVSCSI_CMD_RESET_BUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pvscsi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct pvscsi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct pvscsi_softc *sc)
{

	FUNC1(sc->dev, "Bus Reset\n");

	FUNC3(sc, PVSCSI_CMD_RESET_BUS, NULL, 0);
	FUNC2(sc);

	FUNC0(2, sc->dev, "bus reset done\n");
}