#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vxlan_softc {int /*<<< orphan*/  vxl_ttl; TYPE_1__* vxl_im6o; TYPE_2__* vxl_im4o; } ;
struct ifvxlancmd {int /*<<< orphan*/  vxlcmd_ttl; } ;
struct TYPE_4__ {int /*<<< orphan*/  imo_multicast_ttl; } ;
struct TYPE_3__ {int /*<<< orphan*/  im6o_multicast_hlim; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_softc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct vxlan_softc *sc, void *arg)
{
	struct ifvxlancmd *cmd;
	int error;

	cmd = arg;

	FUNC0(sc);
	if (FUNC2(cmd->vxlcmd_ttl) == 0) {
		sc->vxl_ttl = cmd->vxlcmd_ttl;
		if (sc->vxl_im4o != NULL)
			sc->vxl_im4o->imo_multicast_ttl = sc->vxl_ttl;
		if (sc->vxl_im6o != NULL)
			sc->vxl_im6o->im6o_multicast_hlim = sc->vxl_ttl;
		error = 0;
	} else
		error = EINVAL;
	FUNC1(sc);

	return (error);
}