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
struct iwm_vap {int dummy; } ;
struct iwm_softc {int dummy; } ;
struct iwm_mac_power_cmd {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_MAC_PM_POWER_TABLE ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,struct iwm_vap*,struct iwm_mac_power_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*,struct iwm_mac_power_cmd*) ; 
 int FUNC2 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwm_mac_power_cmd*) ; 

__attribute__((used)) static int
FUNC3(struct iwm_softc *sc, struct iwm_vap *ivp)
{
	struct iwm_mac_power_cmd cmd = {};

	FUNC0(sc, ivp, &cmd);
	FUNC1(sc, &cmd);

	return FUNC2(sc, IWM_MAC_PM_POWER_TABLE, 0,
	    sizeof(cmd), &cmd);
}