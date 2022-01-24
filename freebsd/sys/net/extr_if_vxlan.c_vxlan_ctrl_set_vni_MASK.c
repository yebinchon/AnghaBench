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
struct vxlan_softc {int /*<<< orphan*/  vxl_vni; } ;
struct ifvxlancmd {int /*<<< orphan*/  vxlcmd_vni; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_softc*) ; 
 scalar_t__ FUNC2 (struct vxlan_softc*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct vxlan_softc *sc, void *arg)
{
	struct ifvxlancmd *cmd;
	int error;

	cmd = arg;

	if (FUNC3(cmd->vxlcmd_vni) != 0)
		return (EINVAL);

	FUNC0(sc);
	if (FUNC2(sc)) {
		sc->vxl_vni = cmd->vxlcmd_vni;
		error = 0;
	} else
		error = EBUSY;
	FUNC1(sc);

	return (error);
}