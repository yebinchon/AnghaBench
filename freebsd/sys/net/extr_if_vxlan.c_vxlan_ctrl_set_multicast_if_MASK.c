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
struct vxlan_softc {int /*<<< orphan*/  vxl_mc_ifname; } ;
struct ifvxlancmd {int /*<<< orphan*/  vxlcmd_ifname; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vxlan_softc*) ; 

__attribute__((used)) static int
FUNC4(struct vxlan_softc * sc, void *arg)
{
	struct ifvxlancmd *cmd;
	int error;

	cmd = arg;

	FUNC0(sc);
	if (FUNC3(sc)) {
		FUNC2(sc->vxl_mc_ifname, cmd->vxlcmd_ifname, IFNAMSIZ);
		error = 0;
	} else
		error = EBUSY;
	FUNC1(sc);

	return (error);
}