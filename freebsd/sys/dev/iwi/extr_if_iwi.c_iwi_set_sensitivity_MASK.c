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
struct iwi_softc {int dummy; } ;
struct iwi_sensitivity {int /*<<< orphan*/  rssi; } ;
typedef  int /*<<< orphan*/  int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IWI_CMD_SET_SENSITIVITY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwi_softc*,int /*<<< orphan*/ ,struct iwi_sensitivity*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwi_sensitivity*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct iwi_softc *sc, int8_t rssi_dbm)
{
	struct iwi_sensitivity sens;

	FUNC0(("Setting sensitivity to %d\n", rssi_dbm));

	FUNC3(&sens, 0, sizeof sens);
	sens.rssi = FUNC1(rssi_dbm);
	return FUNC2(sc, IWI_CMD_SET_SENSITIVITY, &sens, sizeof sens);
}