#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ sa_family; } ;
struct TYPE_7__ {scalar_t__ sin_port; } ;
union vxlan_sockaddr {TYPE_5__ sa; TYPE_2__ in4; } ;
struct TYPE_8__ {scalar_t__ sin_port; } ;
struct TYPE_6__ {scalar_t__ sa_family; } ;
struct TYPE_9__ {TYPE_3__ in4; TYPE_1__ sa; } ;
struct vxlan_softc {TYPE_4__ vxl_dst_addr; } ;
struct vxlan_ftable_entry {int dummy; } ;
struct ifvxlancmd {int /*<<< orphan*/  vxlcmd_mac; union vxlan_sockaddr vxlcmd_sa; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  VXLAN_FE_FLAG_STATIC ; 
 int /*<<< orphan*/  FUNC0 (union vxlan_sockaddr*) ; 
 scalar_t__ FUNC1 (union vxlan_sockaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vxlan_softc*) ; 
 struct vxlan_ftable_entry* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct vxlan_ftable_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct vxlan_softc*,struct vxlan_ftable_entry*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vxlan_softc*,struct vxlan_ftable_entry*) ; 
 int FUNC8 (union vxlan_sockaddr*) ; 
 scalar_t__ FUNC9 (union vxlan_sockaddr*) ; 
 scalar_t__ FUNC10 (union vxlan_sockaddr*) ; 

__attribute__((used)) static int
FUNC11(struct vxlan_softc *sc, void *arg)
{
	union vxlan_sockaddr vxlsa;
	struct ifvxlancmd *cmd;
	struct vxlan_ftable_entry *fe;
	int error;

	cmd = arg;
	vxlsa = cmd->vxlcmd_sa;

	if (!FUNC0(&vxlsa))
		return (EINVAL);
	if (FUNC9(&vxlsa) != 0)
		return (EINVAL);
	if (FUNC10(&vxlsa) != 0)
		return (EINVAL);
	/* BMV: We could support both IPv4 and IPv6 later. */
	if (vxlsa.sa.sa_family != sc->vxl_dst_addr.sa.sa_family)
		return (EAFNOSUPPORT);

	if (FUNC1(&vxlsa)) {
		error = FUNC8(&vxlsa);
		if (error)
			return (error);
	}

	fe = FUNC4();
	if (fe == NULL)
		return (ENOMEM);

	if (vxlsa.in4.sin_port == 0)
		vxlsa.in4.sin_port = sc->vxl_dst_addr.in4.sin_port;

	FUNC6(sc, fe, cmd->vxlcmd_mac, &vxlsa.sa,
	    VXLAN_FE_FLAG_STATIC);

	FUNC2(sc);
	error = FUNC7(sc, fe);
	FUNC3(sc);

	if (error)
		FUNC5(fe);

	return (error);
}