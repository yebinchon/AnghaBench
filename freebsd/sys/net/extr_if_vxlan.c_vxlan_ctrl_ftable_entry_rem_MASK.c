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
struct vxlan_softc {int dummy; } ;
struct vxlan_ftable_entry {int dummy; } ;
struct ifvxlancmd {int /*<<< orphan*/  vxlcmd_mac; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vxlan_softc*,struct vxlan_ftable_entry*) ; 
 struct vxlan_ftable_entry* FUNC3 (struct vxlan_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct vxlan_softc *sc, void *arg)
{
	struct ifvxlancmd *cmd;
	struct vxlan_ftable_entry *fe;
	int error;

	cmd = arg;

	FUNC0(sc);
	fe = FUNC3(sc, cmd->vxlcmd_mac);
	if (fe != NULL) {
		FUNC2(sc, fe);
		error = 0;
	} else
		error = ENOENT;
	FUNC1(sc);

	return (error);
}